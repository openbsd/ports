# $OpenBSD: Makefile,v 1.25 2004/06/08 20:21:24 danh Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"system to store and display time-series data"

RRDVERSION=	1.0.48
DISTNAME=	rrdtool-${RRDVERSION}
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

SUBST_VARS=	RRDVERSION

FLAVORS=	tcl
FLAVOR?=

LIB_DEPENDS=	png.4::graphics/png \
		gd.18::graphics/gd

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
