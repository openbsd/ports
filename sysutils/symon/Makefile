# $OpenBSD: Makefile,v 1.20 2006/01/10 18:17:36 bernd Exp $

COMMENT=		"active monitoring tool"
V=			2.72
DISTNAME=		symon-${V}
PKGNAME=		${DISTNAME}p0
CATEGORIES=		sysutils net

HOMEPAGE=		http://www.xs4all.nl/~wpd/symon
MAINTAINER=		Willem Dijkstra <wpd@xs4all.nl>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c 

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
FULLPKGNAME${i}=        symon${i}-${V}p0
.endfor

.if defined(PACKAGING) && !empty(SUBPACKAGE)
MODULE_NAME=            ${SUBPACKAGE:S/-//g}
LIB_DEPENDS=            ${${MODULE_NAME:U}_LIBDEPENDS}
MESSAGE=                ${PKGDIR}/MESSAGE${SUBPACKAGE}
.else
LIB_DEPENDS=		rrd:rrdtool-*:net/rrdtool
.endif

USE_X11=		Yes

NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}/symon
SUBST_VARS=		V

MAKE_ENV=		LIBS="-L${X11BASE}/lib"

.include <bsd.port.mk>
