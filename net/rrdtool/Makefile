# $OpenBSD: Makefile,v 1.19 2002/05/17 15:41:30 danh Exp $

COMMENT=	"system to store and display time-series data"

VERSION=	1.0.37
DISTNAME=	rrdtool-${VERSION}
CATEGORIES=     net
NEED_VERSION=	1.468
MASTER_SITES=	http://people.ee.ethz.ch/~oetiker/webtools/rrdtool/pub/ \
		ftp://ftp.sunet.se/pub/network/monitoring/rrdtool/ \
		http://ftp.sunet.se/pub/network/monitoring/rrdtool/

HOMEPAGE=	http://people.ee.ethz.ch/~oetiker/webtools/rrdtool/

MAINTAINER=	Dan Harnett <danh@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

SUBST_VARS=	VERSION

FLAVORS=	tcl
FLAVOR?=

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} --enable-static
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC} ${WRKSRC}/config ${WRKSRC}/contrib/php4

.if ${FLAVOR:L:Mtcl}
LIB_DEPENDS+=	tcl83::lang/tcl/8.3
USE_GMAKE=	Yes
CONFIGURE_ARGS+= --with-tcllib="${LOCALBASE}/lib/tcl8.3"
CONFIGURE_ENV+=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include/tcl8.3"
.else
CONFIGURE_ARGS+= --without-tcllib
.endif

.if ${FLAVOR:L:Mtcl}
post-install:
	cd ${WRKSRC} && ${MAKE} site-tcl-install
.endif

post-patch:
	@cd ${WRKSRC}/config; \
	${PATCH} --forward --quiet -E < \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltconfig && \
	${PATCH} --forward --quiet -E < \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltmain_sh

.include <bsd.port.mk>
