# $OpenBSD: Makefile,v 1.3 1998/12/28 22:51:48 jasoni Exp $
#

DISTNAME=	WindowMaker-0.20.3
CATEGORIES=	x11

MAINTAINER=	jasoni@openbsd.org

MASTER_SITES=	ftp://ftp.windowmaker.org/pub/beta/srcs/ \
		ftp://ftp.io.com/pub/mirror/windowmaker/beta/srcs/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} ${DATAFILES}
DATAFILES=	WindowMaker-data.tar.gz

LIB_DEPENDS=	jpeg\\.62\\.:${PORTSDIR}/graphics/jpeg \
                tiff\\.3\\.4:${PORTSDIR}/graphics/tiff34 \
                png\\.1\\.:${PORTSDIR}/graphics/png \
		gif\\.3\\.:${PORTSDIR}/graphics/giflib
GNU_CONFIGURE=	YES
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
		

