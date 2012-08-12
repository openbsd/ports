# $OpenBSD: Makefile.inc,v 1.3 2012/08/12 17:19:59 jasper Exp $

SHARED_ONLY?=		Yes

CATEGORIES+=		devel

HOMEPAGE=		http://libgit2.github.com/

# GPLv2 with linking exemption.
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes
PERMIT_DISTFILES_CDROM?= Yes
PERMIT_DISTFILES_FTP?=	Yes

MASTER_SITES?=		http://distfiles.nl/
DIST_SUBDIR=		libgit

TAR?=			${LOCALBASE}/bin/gtar
BUILD_DEPENDS+= 	archivers/gtar
