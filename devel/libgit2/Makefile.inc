# $OpenBSD: Makefile.inc,v 1.10 2016/03/19 15:47:04 naddy Exp $

CATEGORIES+=		devel

HOMEPAGE=		http://libgit2.github.com/

# GPLv2 with linking exemption.
PERMIT_PACKAGE_CDROM?=	Yes

DIST_SUBDIR=		libgit
DISTNAME?=		${PROJECT}-${V}
