# $OpenBSD: Makefile,v 1.36 2006/08/03 23:15:58 espie Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"system to store and display time-series data"

RRDVERSION=	1.0.49
DISTNAME=	rrdtool-${RRDVERSION}
PKGNAME=	${DISTNAME}p3
SHARED_LIBS=	rrd	0.0
CATEGORIES=	net
MASTER_SITES=	${HOMEPAGE}pub/rrdtool-1.0.x/ \
		http://ftp.sunet.se/pub/network/monitoring/rrdtool/rrdtool-1.0.x/

HOMEPAGE=	http://people.ee.ethz.ch/~oetiker/webtools/rrdtool/

MAINTAINER=	Dan Harnett <danh@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

WANTLIB=		c freetype fontconfig jpeg m png z 

MODULES=	converters/libiconv

SUBST_VARS=	RRDVERSION

FLAVORS=	tcl
FLAVOR?=

LIB_DEPENDS=	gd.>=18::graphics/gd

USE_X11=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} --enable-static \
		--enable-local-libpng \
		--enable-local-zlib
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config ${WRKSRC}/contrib/php4

.if ${FLAVOR:L:Mtcl}
LIB_DEPENDS+=	tcl84:tcl-8.4.*:lang/tcl/8.4
USE_GMAKE=	Yes
CONFIGURE_ARGS+= --with-tcllib="${LOCALBASE}/lib/tcl8.4"
CFLAGS+=	-I${LOCALBASE}/include/tcl8.4
INSTALL_TARGET=	install site-tcl-install
FAKE_FLAGS+=	MACHINE_ARCH="${MACHINE_ARCH}"
.else
CONFIGURE_ARGS+= --without-tcllib
.endif

CFLAGS+=	-I${LOCALBASE}/include/libpng

.include <bsd.port.mk>
