# $OpenBSD: Makefile.inc,v 1.3 2011/03/31 10:25:25 sthen Exp $

V = 1.3.1

CATEGORIES+=	net net/icinga

HOMEPAGE?=	http://www.icinga.org/

MAINTAINER?=	Stuart Henderson <sthen@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes
PERMIT_DISTFILES_CDROM?=Yes
PERMIT_DISTFILES_FTP?=	Yes

MASTER_SITES?=	${MASTER_SITE_SOURCEFORGE:=icinga/}
