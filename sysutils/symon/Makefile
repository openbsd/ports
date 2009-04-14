# $OpenBSD: Makefile,v 1.36 2009/04/14 15:41:35 sthen Exp $

COMMENT-main=		active monitoring tool
V=			2.79
DISTNAME=		symon-${V}
PKGNAME-main=		${DISTNAME}p0
FULLPKGNAME-mon=	symon-mon-${V}p0
FULLPKGNAME-mux=        symon-mux-${V}
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

WANTLIB-main=		${WANTLIB} fontconfig

# client only package
COMMENT-mon=		active host monitor
LIB_DEPENDS-mon=
# gatherer only package
COMMENT-mux=		symon data gatherer
LIB_DEPENDS-mux=	rrd:rrdtool-*:net/rrdtool
WANTLIB-mux=		${WANTLIB} fontconfig

LIB_DEPENDS=		rrd:rrdtool-*:net/rrdtool

USE_X11=		Yes
NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}/symon
SUBST_VARS=		V

MAKE_ENV=		LIBS="-L${X11BASE}/lib" MANDIR="man"

.include <bsd.port.mk>
