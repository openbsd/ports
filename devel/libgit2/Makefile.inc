# $OpenBSD: Makefile.inc,v 1.5 2013/04/22 06:33:28 jasper Exp $

SHARED_ONLY?=		Yes

CATEGORIES+=		devel

HOMEPAGE=		http://libgit2.github.com/

# GPLv2 with linking exemption.
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes
PERMIT_DISTFILES_FTP?=	Yes

MASTER_SITES=		http://github.com/libgit2/${PROJECT}/archive/v${V}.tar.gz?dummy=/
DIST_SUBDIR=		libgit
DISTNAME?=		${PROJECT}-${V}
