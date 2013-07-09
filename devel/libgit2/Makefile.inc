# $OpenBSD: Makefile.inc,v 1.6 2013/07/09 10:05:39 jasper Exp $

SHARED_ONLY?=		Yes

CATEGORIES+=		devel

HOMEPAGE=		http://libgit2.github.com/

# GPLv2 with linking exemption.
PERMIT_PACKAGE_CDROM?=	Yes

MASTER_SITES=		http://github.com/libgit2/${PROJECT}/archive/v${V}.tar.gz?dummy=/
DIST_SUBDIR=		libgit
DISTNAME?=		${PROJECT}-${V}
