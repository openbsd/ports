# $OpenBSD: Makefile,v 1.20 1999/12/10 20:52:33 jasoni Exp $

DISTNAME=	WindowMaker-0.61.1
PKGNAME=	windowmaker-0.61.1
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_WINDOWMAKER}
MASTER_SITE_SUBDIR= beta/srcs
DATAFILES=	WindowMaker-extra-0.1.tar.gz
DISTFILES=	${DISTNAME}.tar.gz ${DATAFILES}

NEED_VERSION=	1.73

MAINTAINER=	jasoni@openbsd.org

LIB_DEPENDS=	PropList.2:${PORTSDIR}/devel/libproplist \
		jpeg.62:${PORTSDIR}/graphics/jpeg \
		tiff.35:${PORTSDIR}/graphics/tiff \
		png.1.3:${PORTSDIR}/graphics/png \
		gif.4.1:${PORTSDIR}/graphics/giflib

# The files placed in $SYSCONFDIR are better placed in $PREFIX/share/WindowMaker
SYSCONFDIR=	${PREFIX}/share/WindowMaker/Defaults
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+=--enable-static --with-pixmapdir=${PREFIX}/share/WindowMaker/Pixmaps \
		--with-incs-from="-I${PREFIX}/include -I${PREFIX}/include/giflib" \
		--with-libs-from="-L${PREFIX}/lib" --disable-debug 
CONFIGURE_ENV=	CPPFLAGS="-I${PREFIX}/include" \
		LDFLAGS="-L${PREFIX}/lib"

post-configure:
	@cd ${WRKDIR}/WindowMaker-extra-0.1; \
		./configure --prefix=${PREFIX}

post-install:
	@cd ${WRKDIR}/WindowMaker-extra-0.1; make install
	@PKG_PREFIX="${PREFIX}" sh ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
