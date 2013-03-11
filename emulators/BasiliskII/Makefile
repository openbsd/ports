# $OpenBSD: Makefile,v 1.31 2013/03/11 11:06:03 espie Exp $

COMMENT=		open source 68k Macintosh emulator

DISTNAME=		BasiliskII_src_01052006
PKGNAME=		BasiliskII-1.0
REVISION=		5
CATEGORIES=		emulators

HOMEPAGE=		http://basilisk.cebix.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/gettext

MASTER_SITES=		http://distfiles.nl/
EXTRACT_SUFX=		.tar.bz2

WANTLIB += GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xxf86dga Xxf86vm atk-1.0 c
WANTLIB += cairo esd expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread-stubs
WANTLIB += pthread sndio stdc++ xcb xcb-render xcb-shm z

LIB_DEPENDS=		audio/esound \
			x11/gtk+2

USE_GMAKE=		Yes
USE_GROFF =		Yes

AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=	autoconf

WRKDIST=		${WRKDIR}/BasiliskII-1.0
WRKSRC=			${WRKDIR}/BasiliskII-1.0/src/Unix

NO_TEST=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/BasiliskII
	${INSTALL_DATA} ${WRKDIST}/README ${PREFIX}/share/doc/BasiliskII

.include <bsd.port.mk>
