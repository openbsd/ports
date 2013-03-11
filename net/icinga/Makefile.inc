# $OpenBSD: Makefile.inc,v 1.15 2013/03/11 11:35:47 espie Exp $

CATEGORIES+=	net net/icinga

HOMEPAGE?=	http://www.icinga.org/

MAINTAINER?=	Stuart Henderson <sthen@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes
PERMIT_DISTFILES_FTP?=	Yes

MASTER_SITES?=	${MASTER_SITE_SOURCEFORGE:=icinga/}
