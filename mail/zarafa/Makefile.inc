# $OpenBSD: Makefile.inc,v 1.37 2016/03/19 15:47:04 naddy Exp $

V?=		7.2.1
BUILD?=		51838
DISTNAME?=	zarafa-${V}-${BUILD}

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
