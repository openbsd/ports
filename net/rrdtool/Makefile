# $OpenBSD: Makefile,v 1.2 2000/06/15 10:39:42 camield Exp $

DISTNAME=		rrdtool-1.0.23
CATEGORIES=     	net
NEED_VERSION=		1.302
HOMEPAGE=		http://ee-staff.ethz.ch/~oetiker/webtools/rrdtool/

MAINTAINER=		danh@nfol.com

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
BROKEN=			"currently doesn't work"
# Makefile in tcl subdir does not work with our make
USE_GMAKE=		Yes
LIB_DEPENDS=		tcl83::lang/tcl/8.3
# tclConfig.sh seems to be a bit confused about installation paths...
# (so this does not work)
CONFIGURE_ARGS+=	--with-tcllib=/usr/local/lib/tcl8.3
.else
CONFIGURE_ARGS+=	--without-tcllib
.endif

.include <bsd.port.mk>
