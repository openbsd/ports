# $OpenBSD: Makefile,v 1.8 1999/03/09 04:13:58 jasoni Exp $
#

DISTNAME=	WindowMaker-0.51.1
CATEGORIES=	x11

MAINTAINER=	jasoni@openbsd.org

MASTER_SITES=	ftp://ftp.windowmaker.org/pub/beta/srcs/ \
		ftp://ftp.io.com/pub/mirror/windowmaker/beta/srcs/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} ${DATAFILES}
DATAFILES=	WindowMaker-data.tar.gz

NEED_VERSION=	1.67

LIB_DEPENDS=	PropList\\.1\\.:${PORTSDIR}/devel/libproplist \
		jpeg\\.62\\.:${PORTSDIR}/graphics/jpeg \
                tiff\\.3\\.4:${PORTSDIR}/graphics/tiff34 \
                png\\.1\\.:${PORTSDIR}/graphics/png \
		gif\\.3\\.:${PORTSDIR}/graphics/giflib

GNU_CONFIGURE=	YES
CONFIGURE_ENV=	CFLAGS="-I${PREFIX}/include" \
		LDFLAGS="-L${PREFIX}/lib" \
		CPPFLAGS="-I${PREFIX}/include"
CONFIGURE_ARGS=	--with-pixmapdir=${PREFIX}/share/WindowMaker/Pixmaps \
		--with-incs-from="-I${PREFIX}/include -I${PREFIX}/include/giflib" \
		--with-libs-from="-L${PREFIX}/lib" \
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
		

