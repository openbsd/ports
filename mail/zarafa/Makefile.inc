# $OpenBSD: Makefile.inc,v 1.22 2012/08/30 14:28:22 ajacoutot Exp $

SHARED_ONLY=	Yes

V?=		7.1.0
BUILD?=		36420
DISTNAME?=	zcp-${V}

CATEGORIES+=	mail/zarafa

HOMEPAGE?=	http://community.zarafa.com/

MAINTAINER?=	Antoine Jacoutot <ajacoutot@openbsd.org>

# AGPLv3 (GNU Affero Public License) with exceptions
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes
PERMIT_DISTFILES_CDROM?=Yes
PERMIT_DISTFILES_FTP?=	Yes

DIST_SUBDIR?=	zarafa
MASTER_SITES?=	http://download.zarafa.com/community/final/${V:C/^([0-9]+\.[0-9]+).*/\1/}/${V}-${BUILD}/sourcecode/
