# $OpenBSD: Makefile,v 1.24 2004/02/15 20:59:58 sturm Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"system to store and display time-series data"

VERSION=	1.0.46
DISTNAME=	rrdtool-${VERSION}
CATEGORIES=     net
MASTER_SITES=	http://people.ee.ethz.ch/~oetiker/webtools/rrdtool/pub/ \
		ftp://ftp.sunet.se/pub/network/monitoring/rrdtool/ \
		http://ftp.sunet.se/pub/network/monitoring/rrdtool/

HOMEPAGE=	http://people.ee.ethz.ch/~oetiker/webtools/rrdtool/

MAINTAINER=	Dan Harnett <danh@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

SUBST_VARS=	VERSION

FLAVORS=	tcl
FLAVOR?=

LIB_DEPENDS=	png.4::graphics/png

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} --enable-static \
		--enable-local-libpng \
		--enable-local-zlib
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC} ${WRKSRC}/config ${WRKSRC}/contrib/php4

.if ${FLAVOR:L:Mtcl}
LIB_DEPENDS+=	tcl84::lang/tcl/8.4
USE_GMAKE=	Yes
CONFIGURE_ARGS+= --with-tcllib="${LOCALBASE}/lib/tcl8.4"
CFLAGS+=	-I${LOCALBASE}/include/tcl8.4
.else
CONFIGURE_ARGS+= --without-tcllib
.endif

CFLAGS+=	-I${LOCALBASE}/include/libpng

.if ${FLAVOR:L:Mtcl}
post-install:
	cd ${WRKSRC} && ${MAKE} site-tcl-install
.endif

.include <bsd.port.mk>
