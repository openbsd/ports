# $OpenBSD: Makefile,v 1.5 2019/07/12 20:51:25 sthen Exp $

COMMENT =	style neutral scalable cursor themes

VERSION =	0.4
DISTNAME =	vanilla-dmz-${VERSION}
REVISION =	1
PKGNAME =	xcursor-dmz-${VERSION}
CATEGORIES =	x11

HOMEPAGE =	http://jimmac.musichall.cz/themes.php?skin=7

# CC by-sa 3.0
PERMIT_PACKAGE =	Yes

MASTER_SITES=	http://jimmac.musichall.cz/zip/
DISTFILES =	${DISTNAME}.tar.bz2 \
		vanilla-dmz-aa-${VERSION}.tar.bz2

PKG_ARCH=		*
NO_BUILD=		Yes
NO_TEST=		Yes

WRKDIST=		${WRKDIR}
DMZDIR=			${PREFIX}/lib/X11/icons/dmz/cursors
DMZAADIR=		${PREFIX}/lib/X11/icons/dmz-aa/cursors

do-install:
	${INSTALL_DATA_DIR} ${DMZDIR}
	${INSTALL_DATA} ${WRKSRC}/Vanilla-DMZ/cursors/* ${DMZDIR}
	${INSTALL_DATA_DIR} ${DMZAADIR}
	${INSTALL_DATA} ${WRKSRC}/Vanilla-DMZ-AA/cursors/* ${DMZAADIR}

.include <bsd.port.mk>
