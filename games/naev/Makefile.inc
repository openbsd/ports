# $OpenBSD: Makefile.inc,v 1.1.1.1 2012/01/25 11:30:24 sthen Exp $

VERSION = 		0.5.0

CATEGORIES = 		games x11

HOMEPAGE = 		http://www.naev.org/

MAINTAINER = 		Kirill Bychkov <yason@linklevel.net>

# GPLv3, GPLv2+, CC-by, CC-by-sa 3.0
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES = 		${MASTER_SITE_SOURCEFORGE:=naev/}
DIST_SUBDIR = 		naev

NO_REGRESS =		Yes
