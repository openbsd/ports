# $OpenBSD: Makefile,v 1.6 1999/02/08 03:59:15 jasoni Exp $
#

DISTNAME=	WindowMaker-0.51.0
CATEGORIES=	x11

MAINTAINER=	jasoni@openbsd.org

MASTER_SITES=	ftp://ftp.windowmaker.org/pub/beta/srcs/ \
		ftp://ftp.io.com/pub/mirror/windowmaker/beta/srcs/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} ${DATAFILES}
DATAFILES=	WindowMaker-data.tar.gz

LIB_DEPENDS=	PropList\\.1\\.:${PORTSDIR}/devel/libproplist \
		jpeg\\.62\\.:${PORTSDIR}/graphics/jpeg \
                tiff\\.3\\.4:${PORTSDIR}/graphics/tiff34 \
                png\\.1\\.:${PORTSDIR}/graphics/png \
		gif\\.3\\.:${PORTSDIR}/graphics/giflib
GNU_CONFIGURE=	YES
CONFIGURE_ENV=	CFLAGS="-I${PREFIX}/include" LDFLAGS="-L${PREFIX}/lib" \
		CPPFLAGS="-I${PREFIX}/include"
CONFIGURE_ARGS=	--with-pixmapdir=${PREFIX}/share/WindowMaker/Pixmaps \
		--with-gfx-incs="-I${PREFIX}/include -I${PREFIX}/include/giflib" \
		--with-gfx-libs=-L${PREFIX}/lib \
		--disable-debug

post-install:	
		@${INSTALL_DATA} ${WRKDIR}/WindowMaker-data/pixmaps/* \
		${PREFIX}/share/WindowMaker/Pixmaps
		@${LDCONFIG} -m ${PREFIX}/lib
		@echo
		@echo "Note: Every user must run /usr/local/bin/wmaker.inst"
		@echo "      before running Window Maker"
		@echo

.include <bsd.port.mk>
		

