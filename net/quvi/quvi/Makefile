# $OpenBSD: Makefile,v 1.8 2017/11/21 00:13:03 naddy Exp $

COMMENT=	silly suite to access the flash media stream properties

DISTNAME =	quvi-0.9.5
REVISION =	4

WANTLIB =  c crypto curl ffi gcrypt gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gpg-error iconv intl json-glib-1.0 lua5.1 lzma m
WANTLIB += nghttp2 pcre proxy pthread quvi-0.9 ssl xml2 z

LIB_DEPENDS =	devel/json-glib \
		net/quvi/libquvi \
		textproc/libxml

.include <bsd.port.mk>
