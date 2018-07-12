# $OpenBSD: Makefile.inc,v 1.16 2018/07/12 13:13:40 robert Exp $

V?=		8.6.80
BUILD?=		1248
DISTNAME?=	kopanocore-${V}.${BUILD}
EXTRACT_SUFX?=	.tar.xz

CATEGORIES+=	mail

HOMEPAGE?=	https://kopano.io/

MAINTAINER?=	Robert Nagy <robert@openbsd.org>

# AGPLv3 (GNU Affero Public License) with exceptions
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes
PERMIT_DISTFILES_FTP?=	Yes

DIST_SUBDIR?=	kopano
MASTER_SITES?=	http://nerd.hu/distfiles/ \
		https://download.kopano.io/community/core:/sourcecode/ \
		http://download.zarafa.com/community/final/${V:C/^([0-9]+\.[0-9]+).*/\1/}/${V}.${BUILD}/
