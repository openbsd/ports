COMMENT=	IMAP message de-duplicator

MODPY_DISTV=	1.3.1
DISTNAME=	imapdedup-${MODPY_DISTV}

CATEGORIES=	mail

HOMEPAGE=	https://quentinsf.com/software/imapdedup

# GPLv2+
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatchling
MODPY_PI=	Yes

RUN_DEPENDS=	security/py-keyring

# missing from pypi sdist
NO_TEST=	Yes

.include <bsd.port.mk>
