# $OpenBSD: Makefile,v 1.43 2010/10/24 21:36:04 ajacoutot Exp $

COMMENT-main=		active monitoring tool
V=			2.82
REVISION=		0
DISTNAME=		symon-${V}
PKGNAME-main=		${DISTNAME}
FULLPKGNAME-mon=	symon-mon-${V}
FULLPKGNAME-mux=        symon-mux-${V}
CATEGORIES=		sysutils net

HOMEPAGE=		http://www.xs4all.nl/~wpd/symon
MAINTAINER=		Willem Dijkstra <wpd@xs4all.nl>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c fontconfig rrd
LIB_DEPENDS=		::net/rrdtool

MASTER_SITES=		${HOMEPAGE}/philes/

MULTI_PACKAGES=		-main -mon -mux

# client only package
COMMENT-mon=		active host monitor
WANTLIB-mon=		c
LIB_DEPENDS-mon=

# gatherer only package
COMMENT-mux=		symon data gatherer

USE_GROFF =	Yes
NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}/symon
MAKE_ENV=		LIBS="-L${X11BASE}/lib" MANDIR="man"
.ifdef DEBUG
# avoid stripping the binaries
MAKE_ENV+=		DEBUG=1
.endif

.include <bsd.port.mk>
