# $OpenBSD: Makefile,v 1.24 2007/02/14 10:04:33 henning Exp $

COMMENT-main=		"active monitoring tool"
V=			2.75
DISTNAME=		symon-${V}
PKGNAME-main=		${DISTNAME}
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

MULTI_PACKAGES=		-main -mon -mux

# client only package
FULLPKGNAME-mon=	symon-mon-${V}
COMMENT-mon=		"active host monitor"
LIB_DEPENDS-mon=
# gatherer only package
FULLPKGNAME-mux=        symon-mux-${V}
COMMENT-mux=		"symon data gatherer"
LIB_DEPENDS-mux=	rrd:rrdtool-*:net/rrdtool

LIB_DEPENDS=		rrd:rrdtool-*:net/rrdtool

USE_X11=		Yes
NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}/symon
SUBST_VARS=		V

MAKE_ENV=		LIBS="-L${X11BASE}/lib"

.include <bsd.port.mk>
