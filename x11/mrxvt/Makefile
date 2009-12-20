# $OpenBSD: Makefile,v 1.13 2009/12/20 17:16:41 benoit Exp $

COMMENT=	multi-tabbed terminal emulator

DISTNAME=	mrxvt-0.5.4
PKGNAME=	${DISTNAME}p2
CATEGORIES=	x11

HOMEPAGE=	http://materm.sourceforge.net

MAINTAINER=	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=materm/}
 
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
