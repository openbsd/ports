# $OpenBSD: Makefile.inc,v 1.26 2019/07/22 16:10:27 robert Exp $

V?=		8.7.82
BUILD?=		59
DISTNAME?=	kopanocore-${V}.${BUILD}
EXTRACT_SUFX?=	.tar.xz

CATEGORIES+=	mail

HOMEPAGE?=	https://kopano.io/

MAINTAINER?=	Robert Nagy <robert@openbsd.org>

# AGPLv3 (GNU Affero Public License) with exceptions
PERMIT_PACKAGE?=	Yes

DIST_SUBDIR?=	kopano
MASTER_SITES?=	http://nerd.hu/distfiles/ \
		https://download.kopano.io/community/core:/sourcecode/ \
		http://download.zarafa.com/community/final/${V:C/^([0-9]+\.[0-9]+).*/\1/}/${V}.${BUILD}/
