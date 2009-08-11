# $OpenBSD: Makefile,v 1.12 2009/08/11 08:42:08 ajacoutot Exp $

COMMENT=	multi-tabbed terminal emulator

DISTNAME=	mrxvt-0.5.4
PKGNAME=	${DISTNAME}p1
CATEGORIES=	x11

HOMEPAGE=	http://materm.sourceforge.net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=materm/}

MAINTAINER=	Benoit Lecocq <blq@arcane-labs.net>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
 
USE_X11=	Yes
BUILD_DEPENDS=	:bzip2-*:archivers/bzip2
LIB_DEPENDS=	jpeg.>=62.::graphics/jpeg \
		png.>=2.::graphics/png

WANTLIB=	ICE SM X11 Xrender Xpm c fontconfig freetype util m z \
		Xft Xau Xdmcp expat pthread-stubs xcb

CONFIGURE_STYLE=gnu
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
