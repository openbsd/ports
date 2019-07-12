# $OpenBSD: Makefile,v 1.14 2019/07/12 20:51:10 sthen Exp $

COMMENT =		async i/o library

DISTNAME =		eio-1.7.10
REVISION =		0

SHARED_LIBS +=	eio                  2.0      # 8.10

# LGPL v2.1
PERMIT_PACKAGE =	Yes

WANTLIB =  crypto ecore eet eina glib-2.0 iconv intl jpeg m pcre pthread
WANTLIB += ssl z

LIB_DEPENDS =		x11/e17/ecore>=1.7.10v2

CONFIGURE_ARGS =	--disable-doc

.include <bsd.port.mk>
