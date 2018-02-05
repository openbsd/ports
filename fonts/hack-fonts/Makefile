# $OpenBSD: Makefile,v 1.7 2018/02/05 06:25:11 rsadowski Exp $

PKG_ARCH =		*

COMMENT =		typeface designed for source code

V =			3.002
DISTNAME =		Hack-v${V}-ttf
PKGNAME =		hack-fonts-$V
CATEGORIES =		fonts
HOMEPAGE =		https://sourcefoundry.org/hack/

MAINTAINER =		Rafael Sadowski <rsadowski@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://github.com/source-foundry/Hack/releases/download/v${V}/

WRKDIST =		${WRKDIR}

NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/fonts/Hack/
	${INSTALL_DATA} ${WRKSRC}/ttf/*.ttf ${PREFIX}/share/fonts/Hack/

.include <bsd.port.mk>
