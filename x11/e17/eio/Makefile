# $OpenBSD: Makefile,v 1.6 2013/01/27 15:57:29 rpe Exp $

COMMENT =		async i/o library

DISTNAME =		eio-1.7.5

SHARED_LIBS +=		eio 1.0 	# 8.5

# LGPL v2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += crypto ecore eet eina glib-2.0 jpeg m pcre pthread
WANTLIB += ssl z

MODULES =		devel/gettext

LIB_DEPENDS =		x11/e17/ecore>=1.7.5v2

USE_LIBTOOL =		Yes

CONFIGURE_ARGS =	--disable-doc

.include <bsd.port.mk>
