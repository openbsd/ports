# $OpenBSD: Makefile,v 1.21 2011/07/08 20:38:00 naddy Exp $

COMMENT=	multi-tabbed terminal emulator

DISTNAME=	mrxvt-0.5.4
REVISION=	4

CATEGORIES=	x11

HOMEPAGE=	http://materm.sourceforge.net

MAINTAINER=	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=materm/}
 
BUILD_DEPENDS=	archivers/bzip2
LIB_DEPENDS=	graphics/jpeg \
		graphics/png

WANTLIB=	ICE SM X11 Xrender Xpm c fontconfig freetype util m z \
		Xft Xau Xdmcp expat pthread-stubs xcb jpeg png

AUTOCONF_VERSION=2.61
CONFIGURE_STYLE=autoconf
CONFIGURE_ARGS+=--enable-menubar \
		--with-x \
		--enable-ttygid=utmp \
		--enable-xim \
		--enable-xft

CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include/freetype2 \
			-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples \
		etcdir=${PREFIX}/share/examples/mrxvt

post-install:
	@cd ${PREFIX}/share/doc/mrxvt && \
		bunzip2 *.bz2

.include <bsd.port.mk>
