# $OpenBSD: Makefile,v 1.7 2018/05/26 06:21:18 feinerer Exp $

COMMENT =	powerful command-line bookmark manager

MODPY_EGG_VERSION =	3.8
DISTNAME =	buku-${MODPY_EGG_VERSION}

CATEGORIES =	www

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
RUN_DEPENDS =		security/py-cryptography${MODPY_FLAVOR} \
			www/py-beautifulsoup4${MODPY_FLAVOR} \
			www/py-urllib3${MODPY_FLAVOR} \
			x11/xsel

post-install:
	${INSTALL_MAN} ${WRKSRC}/buku.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
