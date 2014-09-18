# $OpenBSD: Makefile.inc,v 1.33 2014/09/18 16:12:39 robert Exp $

SHARED_ONLY=	Yes

V?=		7.1.11
BUILD?=		45875
DISTNAME?=	zcp-${V}-unofficial

CATEGORIES+=	mail

HOMEPAGE?=	http://community.zarafa.com/

MAINTAINER?=	Robert Nagy <robert@openbsd.org>

# AGPLv3 (GNU Affero Public License) with exceptions
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes
PERMIT_DISTFILES_FTP?=	Yes

DIST_SUBDIR?=	zarafa
MASTER_SITES?=	http://nerd.hu/distfiles/ \
		http://download.zarafa.com/community/final/${V:C/^([0-9]+\.[0-9]+).*/\1/}/${V}-${BUILD}/sourcecode/
