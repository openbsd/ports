# $OpenBSD: Makefile,v 1.6 2000/07/10 20:28:02 danh Exp $

DISTNAME=		rrdtool-1.0.24
CATEGORIES=     	net
NEED_VERSION=		1.310
HOMEPAGE=		http://ee-staff.ethz.ch/~oetiker/webtools/rrdtool/

MAINTAINER=		danh@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=		${HOMEPAGE}/pub/ \
			ftp://ftp.sunet.se/pub/network/monitoring/rrdtool/ \
			http://ftp.sunet.se/pub/network/monitoring/rrdtool/

FLAVORS=		tcl
FLAVOR?=

.if defined(WITH_TCL)
FLAVOR+=		tcl
.endif

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.if ${FLAVOR:L:Mtcl}
# Makefile in tcl subdir does not work with our make
USE_GMAKE=		Yes
LIB_DEPENDS=		tcl83::lang/tcl/8.3
MAKE_FLAGS+=		CFLAGS+=-I${LOCALBASE}/include/tcl8.3
CONFIGURE_ARGS+=	--with-tcllib='${LOCALBASE}/lib/tcl8.3'

post-install:
	cd ${WRKSRC};  ${MAKE} site-tcl-install

.else
CONFIGURE_ARGS+=	--without-tcllib
.endif

.include <bsd.port.mk>
