# $OpenBSD: Makefile,v 1.3 2010/11/19 07:23:13 espie Exp $

COMMENT =	library for parsing mms:// and mmsh:// type network streams

DISTNAME =	libmms-0.4
CATEGORIES =	multimedia net
SHARED_LIBS =	mms 0.0 #0.2

HOMEPAGE =	https://launchpad.net/libmms

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://launchpad.net/libmms/trunk/0.4/+download/

CONFIGURE_STYLE=gnu
MODULES =	devel/gettext
USE_LIBTOOL =	Yes

LIB_DEPENDS =	devel/glib2
WANTLIB =	glib-2.0 pcre

.include <bsd.port.mk>
