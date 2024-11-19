COMMENT =		IMAP message de-duplicator

MODPY_EGG_VERSION =	1.2

DISTNAME =		imapdedup-${MODPY_EGG_VERSION}

CATEGORIES =		mail

HOMEPAGE =		https://quentinsf.com/software/imapdedup

# GPLv2+
PERMIT_PACKAGE=		Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

RUN_DEPENDS=		security/py-keyring${MODPY_FLAVOR}

# pypi archive hasn't got any test
NO_TEST =		Yes

.include <bsd.port.mk>
