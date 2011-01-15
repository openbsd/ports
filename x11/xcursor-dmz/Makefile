# $OpenBSD: Makefile,v 1.1.1.1 2011/01/15 12:51:59 landry Exp $

COMMENT =	style neutral scalable cursor themes

VERSION =	0.4
DISTNAME =	vanilla-dmz-${VERSION}
PKGNAME =	xcursor-dmz-${VERSION}
CATEGORIES =	x11

HOMEPAGE =	http://jimmac.musichall.cz/themes.php?skin=7

MAINTAINER =	Martin Pieuchot <mp@nolizard.org>

# CC by-sa 3.0
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES=	http://jimmac.musichall.cz/zip/
DISTFILES =	${DISTNAME}.tar.bz2 \
		vanilla-dmz-aa-${VERSION}.tar.bz2

PKG_ARCH=		*
NO_BUILD=		Yes
NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}
DMZDIR=			${PREFIX}/lib/X11/icons/dmz/cursors
DMZAADIR=		${PREFIX}/lib/X11/icons/dmz-aa/cursors

do-install:
	${INSTALL_DATA_DIR} ${DMZDIR}
	${INSTALL_DATA} ${WRKSRC}/Vanilla-DMZ/cursors/* ${DMZDIR}
	${INSTALL_DATA_DIR} ${DMZAADIR}
	${INSTALL_DATA} ${WRKSRC}/Vanilla-DMZ-AA/cursors/* ${DMZAADIR}

.include <bsd.port.mk>
