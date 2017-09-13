# $OpenBSD: Makefile.inc,v 1.1.1.1 2017/09/13 10:38:41 robert Exp $

V?=		8.3.5
BUILD?=		1335
DISTNAME?=	kopanocore-${V}~${BUILD}
EXTRACT_SUFX?=	.tar.xz

CATEGORIES+=	mail

HOMEPAGE?=	http://community.zarafa.com/

MAINTAINER?=	Robert Nagy <robert@openbsd.org>

# AGPLv3 (GNU Affero Public License) with exceptions
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes
PERMIT_DISTFILES_FTP?=	Yes

DIST_SUBDIR?=	kopano
MASTER_SITES?=	https://download.kopano.io/community/core:/sourcecode/ \
		http://download.zarafa.com/community/final/${V:C/^([0-9]+\.[0-9]+).*/\1/}/${V}.${BUILD}/
