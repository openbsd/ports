# $OpenBSD: Makefile,v 1.3 2013/11/11 14:57:10 ajacoutot Exp $

COMMENT=	silly suite to access the flash media stream properties

DISTNAME =	quvi-0.9.5

WANTLIB += c crypto curl ffi gcrypt gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gpg-error iconv idn intl json-glib-1.0
WANTLIB += lua5.1 m pcre proxy pthread quvi-0.9 ssl xml2 z

LIB_DEPENDS =	devel/json-glib \
		net/quvi/libquvi \
		textproc/libxml

.include <bsd.port.mk>
