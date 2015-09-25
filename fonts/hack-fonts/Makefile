# $OpenBSD: Makefile,v 1.2 2015/09/25 12:50:07 sthen Exp $

PKG_ARCH =		*

COMMENT =		typeface designed for source code

V =			2.010
REVISION =		0
DISTNAME =		Hack-v${V:S/./_/}-otf
PKGNAME =		hack-fonts-$V
CATEGORIES =		fonts
HOMEPAGE =		http://sourcefoundry.org/hack/

# SIL Open Font License v1.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://github.com/chrissimpkins/Hack/releases/download/v$V/
EXTRACT_SUFX =		.zip

WRKDIST =		${WRKDIR}

NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/fonts/Hack/
	${INSTALL_DATA} ${WRKSRC}/*.otf ${PREFIX}/share/fonts/Hack/

.include <bsd.port.mk>
