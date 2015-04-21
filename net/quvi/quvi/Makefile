# $OpenBSD: Makefile,v 1.5 2015/04/21 18:51:25 sthen Exp $

COMMENT=	silly suite to access the flash media stream properties

DISTNAME =	quvi-0.9.5
REVISION =	1

WANTLIB += c crypto curl ffi gcrypt gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gpg-error idn json-glib-1.0 lua5.1 lzma m pcre
WANTLIB += proxy pthread quvi-0.9 ssl xml2 z

MODULES =	devel/gettext

LIB_DEPENDS =	devel/json-glib \
		net/quvi/libquvi \
		textproc/libxml

.include <bsd.port.mk>
