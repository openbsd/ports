# $OpenBSD: Makefile,v 1.1 2002/10/08 07:56:42 dhartmei Exp $

COMMENT=		"active monitoring tool"
V=			2.51
DISTNAME=		symon-${V}
CATEGORIES=		net sysutils
NEED_VERSION=		1.502
MASTER_SITES=		http://www.xs4all.nl/~wpd/symon/

HOMEPAGE=		http://www.xs4all.nl/~wpd/symon/
MAINTAINER=		Willem Dijkstra <wpd@xs4all.nl>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SUBPACKAGE?=

# client only package
MULTI_PACKAGES+=	-mon
COMMENT-mon=		"active host monitor"
MON_DEPENDS=		
# gatherer only package
MULTI_PACKAGES+=	-mux
COMMENT-mux=		"symon data gatherer"
MUX_DEPENDS=		rrd:rrdtool-*:net/rrdtool 

# Web frontend only package also depends on php4,
# but php4.2.2 needs an :php4->=4:www/php4
# and php<     needs an :php4-core->=4:www/php4
# => net result = it won't work without php, but the package does not force you
# to have it.
MULTI_PACKAGES+=	-web
COMMENT-web=		"symon web frontend"
WEB_DEPENDS=		rrd:rrdtool-*:net/rrdtool

.for i in ${MULTI_PACKAGES}
FULLPKGNAME${i}=        symon${i}-${V}
.endfor

.if defined(PACKAGING) && !empty(SUBPACKAGE)
MODULE_NAME=            ${SUBPACKAGE:S/-//g}
LIB_DEPENDS=            ${${MODULE_NAME:U}_DEPENDS}
MESSAGE=                ${PKGDIR}/MESSAGE${SUBPACKAGE}
.else
LIB_DEPENDS=		rrd:rrdtool-*:net/rrdtool 
.endif

WRKDIST=		${WRKDIR}/symon
SUBST_VARS=		V

.include <bsd.port.mk>

