# $OpenBSD: Makefile,v 1.11 2013/12/06 13:16:45 dlg Exp $

COMMENT =		async i/o library

DISTNAME =		eio-1.7.9

SHARED_LIBS +=	eio                  1.0      # 8.6

# LGPL v2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += crypto ecore eet eina glib-2.0 jpeg m pcre pthread
WANTLIB += ssl z

MODULES =		devel/gettext

LIB_DEPENDS =		x11/e17/ecore>=1.7.9v2

CONFIGURE_ARGS =	--disable-doc

.include <bsd.port.mk>
