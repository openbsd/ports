# $OpenBSD: Makefile.inc,v 1.17 2013/05/13 20:57:38 sthen Exp $

CATEGORIES+=	net

HOMEPAGE?=	http://www.icinga.org/

MAINTAINER?=	Stuart Henderson <sthen@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE_CDROM?=	Yes

MASTER_SITES?=	${MASTER_SITE_SOURCEFORGE:=icinga/}
