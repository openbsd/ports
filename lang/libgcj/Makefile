#	$OpenBSD: Makefile,v 1.2 1999/09/17 10:26:50 turan Exp $

BROKEN=		"sources no longer exist"

# This should probably be part of the egcs port eventually.

# it only works right with a recent bsd.port.mk.
NEED_VERSION=1.73

# If you want to be built with egcs-snapshot instead of in-tree, depend on that
#BUILD_DEPENDS=	egcj:${PORTSDIR}/lang/egcs-snapshot
# In the end we want to use autoconf to regen configure after patching
#BUILD_DEPENDS+=	autoconf:${PORTSDIR}/devel/autoconf

CATEGORIES=	lang
MAINTAINER=	niklas@openbsd.org

# These are for snapshot trackers
#LATEST_DATE=	1999-07-08
#DISTNAME=	libgcj-snapshot-${LATEST_DATE}
#MASTER_SITES=	ftp://ftp.appli.se/pub/ \
#		ftp://sourceware.cygnus.com/pub/java/snapshots/
#MIRROR_DISTFILE=no

DISTNAME=	libgcj-2.95
MASTER_SITES=	ftp://sourceware.cygnus.com/pub/java/

#CFLAGS=		-O2 -g
CFLAGS=		-O2
GNU_CONFIGURE=	yes
# If you use egcs-snapshot...
#CONFIGURE_ENV=	CXX=ec++ CC=egcc

USE_GMAKE=	yes
SEPARATE_BUILD=	yes
# If you use egcs-snapshot...
#MAKE_FLAGS=	GCJ=egcj

# does not work yet as libgcj is a bit messed up
#post-patch:
#	cd ${WRKSRC}/libjava && PATH=${PORTPATH} autoreconf

.include <bsd.port.mk>
