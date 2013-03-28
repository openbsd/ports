# $OpenBSD: Makefile.inc,v 1.16 2013/03/28 12:05:52 sthen Exp $

CATEGORIES+=	net net/icinga

HOMEPAGE?=	http://www.icinga.org/

MAINTAINER?=	Stuart Henderson <sthen@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE_CDROM?=	Yes

MASTER_SITES?=	${MASTER_SITE_SOURCEFORGE:=icinga/}
