# $OpenBSD: Makefile,v 1.58 2013/10/12 13:09:30 sthen Exp $

COMMENT-main=		active monitoring tool

V=			2.86
REVISION=		1
DISTNAME=		symon-$V
WRKDIST=		${WRKDIR}/symon
PKGNAME-main=		${DISTNAME}
FULLPKGNAME-mon=	symon-mon-$V
FULLPKGNAME-mux=	symon-mux-$V

CATEGORIES=		sysutils net

HOMEPAGE=		http://www.xs4all.nl/~wpd/symon

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c fontconfig rrd
LIB_DEPENDS=		net/rrdtool

MASTER_SITES=		${HOMEPAGE}/philes/

MULTI_PACKAGES=		-main -mon -mux

# client only package
COMMENT-mon=		active host monitor
WANTLIB-mon=		c
LIB_DEPENDS-mon=

# gatherer only package
COMMENT-mux=		symon data gatherer

NO_TEST=		Yes

MAKE_ENV=		LIBS="-L${X11BASE}/lib" MANDIR="man"

.ifdef DEBUG
# avoid stripping the binaries
MAKE_ENV+=		DEBUG=1
.endif

.include <bsd.port.mk>
