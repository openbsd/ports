# $OpenBSD: Makefile,v 1.4 2002/12/01 01:58:42 dhartmei Exp $

COMMENT=		"active monitoring tool"
V=			2.55
DISTNAME=		symon-${V}
CATEGORIES=		net sysutils

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
MON_LIBDEPENDS=
MON_RUNDEPENDS=		
# gatherer only package
MULTI_PACKAGES+=	-mux
COMMENT-mux=		"symon data gatherer"
MUX_LIBDEPENDS=		rrd:rrdtool-*:net/rrdtool 
MUX_RUNDEPENDS=		rrd:rrdtool-*:net/rrdtool 
# web frontend only package
MULTI_PACKAGES+=	-web
COMMENT-web=		"symon web frontend"
WEB_LIBDEPENDS=
WEB_RUNDEPENDS=		rrd:rrdtool-*:net/rrdtool php:php4->=4.2.3:www/php4/core

.for i in ${MULTI_PACKAGES}
FULLPKGNAME${i}=        symon${i}-${V}
.endfor

.if defined(PACKAGING) && !empty(SUBPACKAGE)
MODULE_NAME=            ${SUBPACKAGE:S/-//g}
LIB_DEPENDS=            ${${MODULE_NAME:U}_LIBDEPENDS}
RUN_DEPENDS=		${${MODULE_NAME:U}_RUNDEPENDS}
MESSAGE=                ${PKGDIR}/MESSAGE${SUBPACKAGE}
.else
BUILD_DEPENDS=		rrd:rrdtool-*:net/rrdtool 
RUN_DEPENDS=		rrd:rrdtool-*:net/rrdtool php:php4->=4.2.3:www/php4/core
LIB_DEPENDS=		rrd:rrdtool-*:net/rrdtool 
.endif

WRKDIST=		${WRKDIR}/symon
SUBST_VARS=		V

NO_REGRESS=		Yes

.include <bsd.port.mk>
