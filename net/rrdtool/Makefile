# $OpenBSD: Makefile,v 1.11 2001/03/04 17:06:41 danh Exp $

VERSION=	1.0.33
DISTNAME=	rrdtool-${VERSION}
CATEGORIES=     net
NEED_VERSION=	1.358
MASTER_SITES=	http://ee-staff.ethz.ch/~oetiker/webtools/rrdtool/pub/ \
		ftp://ftp.sunet.se/pub/network/monitoring/rrdtool/ \
		http://ftp.sunet.se/pub/network/monitoring/rrdtool/

HOMEPAGE=	http://ee-staff.ethz.ch/~oetiker/webtools/rrdtool/

MAINTAINER=	Dan Harnett <danh@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

SUBST_VARS=	VERSION

FLAVORS=	tcl
FLAVOR?=

.if ${FLAVOR:L:Mtcl}
LIB_DEPENDS+=	tcl83::lang/tcl/8.3
USE_GMAKE=	Yes
.endif

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} --enable-static
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include"

.if ${FLAVOR:L:Mtcl}
CONFIGURE_ARGS+= --with-tcllib="${LOCALBASE}/lib/tcl8.3"
CONFIGURE_ENV+=	CFLAGS="-I${LOCALBASE}/include/tcl8.3"
.else
CONFIGURE_ARGS+= --without-tcllib
.endif

.if ${FLAVOR:L:Mtcl}
post-install:
	cd ${WRKSRC} && ${MAKE} site-tcl-install
.endif

.include <bsd.port.mk>
