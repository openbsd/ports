# $OpenBSD: Makefile.inc,v 1.24 2012/10/28 21:51:08 robert Exp $

SHARED_ONLY=	Yes

V?=		7.1.1
BUILD?=		37812
DISTNAME?=	zcp-${V}

CATEGORIES+=	mail/zarafa

HOMEPAGE?=	http://community.zarafa.com/

MAINTAINER?=	Robert Nagy <robert@openbsd.org>

# AGPLv3 (GNU Affero Public License) with exceptions
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes
PERMIT_DISTFILES_CDROM?=Yes
PERMIT_DISTFILES_FTP?=	Yes

DIST_SUBDIR?=	zarafa
MASTER_SITES?=	http://download.zarafa.com/community/final/${V:C/^([0-9]+\.[0-9]+).*/\1/}/${V}-${BUILD}/sourcecode/
