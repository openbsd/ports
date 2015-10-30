# $OpenBSD: Makefile,v 1.6 2015/10/30 12:47:40 sthen Exp $

COMMENT=	silly suite to access the flash media stream properties

DISTNAME =	quvi-0.9.5
REVISION =	2

WANTLIB += c crypto curl ffi gcrypt gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gpg-error idn json-glib-1.0 lua5.1 lzma m nghttp2
WANTLIB += pcre proxy pthread quvi-0.9 ssl xml2 z

MODULES =	devel/gettext

LIB_DEPENDS =	devel/json-glib \
		net/quvi/libquvi \
		textproc/libxml

.include <bsd.port.mk>
