# $OpenBSD: Makefile,v 1.17 2010/03/25 08:10:56 jasper Exp $
# $RuOBSD: Makefile,v 1.4 2002/04/29 11:07:18 grange Exp $
# $NetBSD: Makefile,v 1.1.1.1 2001/12/29 00:22:02 abs Exp $

COMMENT=		open source 68k Macintosh emulator

DISTNAME=		BasiliskII_src_01052006
PKGNAME=		BasiliskII-1.0
CATEGORIES=		emulators

HOMEPAGE=		http://basilisk.cebix.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext

MASTER_SITES=		http://www.phil.uu.nl/~lievisse/distfiles/
EXTRACT_SUFX=		.tar.bz2

WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender Xxf86dga Xxf86vm
WANTLIB += atk-1.0 audiofile c cairo expat fontconfig freetype
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread pthread-stubs
WANTLIB += sndio stdc++ xcb z

LIB_DEPENDS=		esd.>=2::audio/esound \
			gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2

USE_X11=		Yes
USE_GMAKE=		Yes

AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=	autoconf

WRKDIST=		${WRKDIR}/BasiliskII-1.0
WRKSRC=			${WRKDIR}/BasiliskII-1.0/src/Unix

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/BasiliskII
	${INSTALL_DATA} ${WRKDIST}/README ${PREFIX}/share/doc/BasiliskII

.include <bsd.port.mk>
