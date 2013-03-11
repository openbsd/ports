# $OpenBSD: Makefile,v 1.56 2013/03/11 11:41:32 espie Exp $

COMMENT-main=		active monitoring tool

V=			2.86
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

USE_GROFF =		Yes
NO_TEST=		Yes

MAKE_ENV=		LIBS="-L${X11BASE}/lib" MANDIR="man"

.ifdef DEBUG
# avoid stripping the binaries
MAKE_ENV+=		DEBUG=1
.endif

.include <bsd.port.mk>
