# $OpenBSD: Makefile,v 1.13 2004/09/21 16:44:04 naddy Exp $

COMMENT=		"active monitoring tool"
V=			2.67
DISTNAME=		symon-${V}
CATEGORIES=		sysutils net

HOMEPAGE=		http://www.xs4all.nl/~wpd/symon
MAINTAINER=		Willem Dijkstra <wpd@xs4all.nl>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/philes/

SUBPACKAGE?=

# client only package
MULTI_PACKAGES+=	-mon
COMMENT-mon=		"active host monitor"
MON_LIBDEPENDS=
# gatherer only package
MULTI_PACKAGES+=	-mux
COMMENT-mux=		"symon data gatherer"
MUX_LIBDEPENDS=		rrd:rrdtool-*:net/rrdtool

.for i in ${MULTI_PACKAGES}
FULLPKGNAME${i}=        symon${i}-${V}
.endfor

.if defined(PACKAGING) && !empty(SUBPACKAGE)
MODULE_NAME=            ${SUBPACKAGE:S/-//g}
LIB_DEPENDS=            ${${MODULE_NAME:U}_LIBDEPENDS}
MESSAGE=                ${PKGDIR}/MESSAGE${SUBPACKAGE}
.else
LIB_DEPENDS=		rrd:rrdtool-*:net/rrdtool
.endif

WRKDIST=		${WRKDIR}/symon
SUBST_VARS=		V

NO_REGRESS=		Yes

.include <bsd.port.mk>
