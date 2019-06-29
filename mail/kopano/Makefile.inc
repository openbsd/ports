# $OpenBSD: Makefile.inc,v 1.24 2019/06/29 18:12:10 robert Exp $

V?=		8.7.81
BUILD?=		203
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
