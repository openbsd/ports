# $OpenBSD#

COMMENT =		memory artifact extraction utility framework

MODPY_EGG_VERSION =	2.4
DISTNAME =		volatility-${MODPY_EGG_VERSION}

CATEGORIES =		security

HOMEPAGE =		http://www.volatilityfoundation.org/

# GPLv2
PERMIT_PACKAGE_CDROM = Yes

MASTER_SITES =		http://downloads.volatilityfoundation.org/releases/${MODPY_EGG_VERSION}/

MODULES =		lang/python
MODPY_SETUPTOOLS = 	Yes

RUN_DEPENDS =	security/distorm3

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/volatility/
.for dir in contrib tools
	mv ${PREFIX}/${dir} ${PREFIX}/share/volatility/
.endfor

.include <bsd.port.mk>
