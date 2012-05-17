# $OpenBSD: Makefile,v 1.28 2012/05/17 05:01:35 ajacoutot Exp $
# $RuOBSD: Makefile,v 1.4 2002/04/29 11:07:18 grange Exp $
# $NetBSD: Makefile,v 1.1.1.1 2001/12/29 00:22:02 abs Exp $

COMMENT=		open source 68k Macintosh emulator

DISTNAME=		BasiliskII_src_01052006
PKGNAME=		BasiliskII-1.0
REVISION=		4
CATEGORIES=		emulators

HOMEPAGE=		http://basilisk.cebix.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext

MASTER_SITES=		http://distfiles.nl/
EXTRACT_SUFX=		.tar.bz2

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xxf86dga Xxf86vm atk-1.0 c
WANTLIB += cairo esd expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pthread sndio stdc++ z

LIB_DEPENDS=		audio/esound \
			x11/gtk+2

USE_GMAKE=		Yes
USE_GROFF =		Yes

AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=	autoconf

WRKDIST=		${WRKDIR}/BasiliskII-1.0
WRKSRC=			${WRKDIR}/BasiliskII-1.0/src/Unix

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/BasiliskII
	${INSTALL_DATA} ${WRKDIST}/README ${PREFIX}/share/doc/BasiliskII

.include <bsd.port.mk>
