const { PrismaClient, Prisma } = require('@prisma/client');
const { UNIQUE_VIOLATION_ERROR, EMPTY_RESULT_ERROR } = require('../errors');
const prisma = new PrismaClient();

module.exports.create = function create(code, name, credit) {
    return prisma.module.create({
        data: {
            modCode: code,
            modName: name,
            creditUnit: credit,
        },
    }).then(function (module) {
        return module;
    }).catch(function (error) {
        // Prisma error codes: https://www.prisma.io/docs/orm/reference/error-reference#p2002
        if (error instanceof Prisma.PrismaClientKnownRequestError && error.code === 'P2002') {
            throw new UNIQUE_VIOLATION_ERROR(`Module ${code} already exists! Cannot create duplicate.`);
        }
        throw error;
    });
};

module.exports.retrieveByCode = function retrieveByCode(code) {
    return prisma.module.findUniqueOrThrow({
        where: {
            modCode: code,
        },
    }).then(function (module) {
        return module;
    }).catch(function (error) {
        // Prisma error codes: https://www.prisma.io/docs/orm/reference/error-reference#p2025
        if (error instanceof Prisma.PrismaClientKnownRequestError && error.code === 'P2025') {
            throw new EMPTY_RESULT_ERROR(`Module ${code} not found!`);
        }
        throw error;
    });
};

module.exports.updateByCode = function updateByCode(code, credit) {
    return prisma.module.update({
        where: {
            modCode: code,
        },
        data: {
            creditUnit: credit,
        },
    }).then(function (module) {
        // Leave blank
    }).catch(function (error) {
        // Prisma error codes: https://www.prisma.io/docs/orm/reference/error-reference#p2025
        if (error instanceof Prisma.PrismaClientKnownRequestError && error.code === 'P2025') {
            throw new EMPTY_RESULT_ERROR(`Module ${code} not found!`);
        }
        throw error;
    });
};

module.exports.deleteByCode = function deleteByCode(code) {
    return prisma.module.delete({
        where: {
            modCode: code,
        },
    }).then(function (module) {
        // Leave blank
    }).catch(function (error) {
        // Prisma error codes: https://www.prisma.io/docs/orm/reference/error-reference#p2025
        if (error instanceof Prisma.PrismaClientKnownRequestError && error.code === 'P2025') {
            throw new EMPTY_RESULT_ERROR(`Module ${code} not found!`);
        }
        throw error;
    });
};

module.exports.retrieveAll = function retrieveAll() {
    return prisma.module.findMany();
};