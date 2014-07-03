# $OpenBSD: Makefile.inc,v 1.31 2014/07/03 06:14:40 robert Exp $

SHARED_ONLY=	Yes

V?=		7.1.10
BUILD?=		44973
DISTNAME?=	zcp-${V}

CATEGORIES+=	mail

HOMEPAGE?=	http://community.zarafa.com/

MAINTAINER?=	Robert Nagy <robert@openbsd.org>

# AGPLv3 (GNU Affero Public License) with exceptions
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes
PERMIT_DISTFILES_FTP?=	Yes

DIST_SUBDIR?=	zarafa
MASTER_SITES?=	http://download.zarafa.com/community/final/${V:C/^([0-9]+\.[0-9]+).*/\1/}/${V}-${BUILD}/sourcecode/
