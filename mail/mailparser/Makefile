COMMENT=	transform raw emails into Python objects

MODPY_DISTV=	4.8.0
DISTNAME=	mail_parser-${MODPY_DISTV}
PKGNAME=	mailparser-${MODPY_DISTV}

CATEGORIES=	mail

HOMEPAGE=	https://github.com/SpamScope/mail-parser

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatchling
MODPY_PI=	Yes

TEST_DEPENDS=	devel/py-test-cov \
		devel/py-test-mock

.include <bsd.port.mk>
