#	$OpenBSD: Makefile,v 1.10 2000/10/22 15:42:28 espie Exp $

BROKEN=		"sources no longer exist"

# This should probably be part of the egcs port eventually.


# If you want to be built with egcs-snapshot instead of in-tree, depend on that
#BUILD_DEPENDS=	egcj::lang/egcs/snapshot
# In the end we want to use autoconf to regen configure after patching
#BUILD_DEPENDS+=	autoconf::devel/autoconf

CATEGORIES=	lang
NEED_VERSION=	 1.305
FAKE=No
MAINTAINER=	Niklas Hallqvist <niklas@openbsd.org>

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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
CONFIGURE_STYLE=gnu
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
