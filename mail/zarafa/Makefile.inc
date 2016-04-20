# $OpenBSD: Makefile.inc,v 1.39 2016/04/20 18:38:41 robert Exp $

V?=		7.2.3
BUILD?=		657
DISTNAME?=	zcp-${V}.${BUILD}

CATEGORIES+=	mail

HOMEPAGE?=	http://community.zarafa.com/

MAINTAINER?=	Robert Nagy <robert@openbsd.org>

# AGPLv3 (GNU Affero Public License) with exceptions
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes
PERMIT_DISTFILES_FTP?=	Yes

DIST_SUBDIR?=	zarafa
MASTER_SITES?=	http://nerd.hu/distfiles/ \
		http://download.zarafa.com/community/final/${V:C/^([0-9]+\.[0-9]+).*/\1/}/${V}.${BUILD}/
