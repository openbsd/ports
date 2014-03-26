# $OpenBSD: Makefile,v 1.4 2014/03/26 18:07:57 ajacoutot Exp $

COMMENT=	silly suite to access the flash media stream properties

DISTNAME =	quvi-0.9.5
REVISION =	0

WANTLIB += c crypto curl ffi gcrypt gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gpg-error idn json-glib-1.0
WANTLIB += lua5.1 m pcre proxy pthread quvi-0.9 ssl xml2 z

MODULES =	devel/gettext

LIB_DEPENDS =	devel/json-glib \
		net/quvi/libquvi \
		textproc/libxml

.include <bsd.port.mk>
