# $OpenBSD: Makefile,v 1.13 1999/03/28 21:51:48 brad Exp $

DISTNAME=	WindowMaker-0.51.2
CATEGORIES=	x11
MASTER_SITES=	ftp://ftp.windowmaker.org/pub/beta/srcs/ \
		ftp://ftp.io.com/pub/mirror/windowmaker/beta/srcs/
DATAFILES=	WindowMaker-data.tar.gz
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} ${DATAFILES}

NEED_VERSION=	1.73

MAINTAINER=	jasoni@openbsd.org

LIB_DEPENDS=	PropList:${PORTSDIR}/devel/libproplist \
		jpeg:${PORTSDIR}/graphics/jpeg \
		tiff:${PORTSDIR}/graphics/tiff34 \
		png:${PORTSDIR}/graphics/png \
		gif:${PORTSDIR}/graphics/giflib

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --with-pixmapdir=${PREFIX}/share/WindowMaker/Pixmaps \
		--with-incs-from="-I${PREFIX}/include -I${PREFIX}/include/giflib" \
		--with-libs-from="-L${PREFIX}/lib" --disable-debug
CONFIGURE_ENV=	CPPFLAGS="-I${PREFIX}/include" \
		LDFLAGS="-L${PREFIX}/lib"

post-install:	
		@${INSTALL_DATA} ${WRKDIR}/WindowMaker-data/pixmaps/* \
		${PREFIX}/share/WindowMaker/Pixmaps
		@${LDCONFIG} -m ${PREFIX}/lib
		@echo
		@echo "Note: Every user must run /usr/local/bin/wmaker.inst"
		@echo "      before running Window Maker"
		@echo

.include <bsd.port.mk>
