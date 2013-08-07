# $OpenBSD: Makefile.inc,v 1.8 2013/08/07 21:57:45 naddy Exp $

SHARED_ONLY?=		Yes

CATEGORIES+=		devel

HOMEPAGE=		http://libgit2.github.com/

# GPLv2 with linking exemption.
PERMIT_PACKAGE_CDROM?=	Yes

MASTER_SITES?=		https://github.com/libgit2/${PROJECT}/archive/v${V}.tar.gz?dummy=/
DIST_SUBDIR=		libgit
DISTNAME?=		${PROJECT}-${V}
