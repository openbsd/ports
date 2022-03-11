COMMENT =	minimalistic X11 window manager

DISTNAME =	oroborus_2.0.20
PKGNAME =	${DISTNAME:S/_/-/}

CATEGORIES =	x11

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ICE SM X11 Xext Xpm c

MASTER_SITES =		${MASTER_SITE_DEBIAN:=main/o/oroborus/} \
			https://distfiles.gentoo.org/distfiles/

SEPARATE_BUILD =	Yes

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu

WRKDIST =		${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
