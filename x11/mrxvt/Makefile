# $OpenBSD: Makefile,v 1.25 2014/11/10 16:06:27 benoit Exp $

COMMENT=	multi-tabbed terminal emulator

DISTNAME=	mrxvt-0.5.4
REVISION =	7

CATEGORIES=	x11

HOMEPAGE=	http://materm.sourceforge.net

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=materm/}
 
BUILD_DEPENDS=	archivers/bzip2
RUN_DEPENDS=	devel/desktop-file-utils
LIB_DEPENDS=	graphics/jpeg \
		graphics/png

WANTLIB=	ICE SM X11 Xrender Xpm c fontconfig util m z \
		Xft jpeg png

AUTOCONF_VERSION=2.61
CONFIGURE_STYLE=autoconf
CONFIGURE_ARGS+=--enable-menubar \
		--with-x \
		--disable-ttygid \
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
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${FILESDIR}/mrxvt.desktop ${PREFIX}/share/applications

.include <bsd.port.mk>
