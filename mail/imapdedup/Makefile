COMMENT =		IMAP message de-duplicator

MODPY_DISTV =	1.2

DISTNAME =		imapdedup-${MODPY_DISTV}
REVISION =		0

CATEGORIES =		mail

HOMEPAGE =		https://quentinsf.com/software/imapdedup

# GPLv2+
PERMIT_PACKAGE=		Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

RUN_DEPENDS=		security/py-keyring

# pypi archive hasn't got any test
NO_TEST =		Yes

.include <bsd.port.mk>
