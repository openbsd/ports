# $OpenBSD: Makefile.inc,v 1.5 2013/03/11 12:27:54 sthen Exp $

VERSION = 		0.5.2

CATEGORIES = 		games x11

HOMEPAGE = 		http://www.naev.org/

MAINTAINER = 		Kirill Bychkov <yason@linklevel.net>

# GPLv3, GPLv2+, CC-by, CC-by-sa 3.0
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES = 		${MASTER_SITE_SOURCEFORGE:=naev/}
DIST_SUBDIR = 		naev

NO_TEST =		Yes
