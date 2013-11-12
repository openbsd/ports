# $OpenBSD: Makefile.inc,v 1.9 2013/11/12 15:00:25 sthen Exp $

SHARED_ONLY?=		Yes

CATEGORIES+=		devel

HOMEPAGE=		http://libgit2.github.com/

# GPLv2 with linking exemption.
PERMIT_PACKAGE_CDROM?=	Yes

DIST_SUBDIR=		libgit
DISTNAME?=		${PROJECT}-${V}
