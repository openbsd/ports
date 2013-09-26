# $OpenBSD: Makefile,v 1.2 2013/09/26 15:54:42 ajacoutot Exp $

COMMENT=	silly suite to access the flash media stream properties

DISTNAME =	quvi-0.9.3.1

WANTLIB += c crypto curl ffi gcrypt gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gpg-error iconv idn intl json-glib-1.0
WANTLIB += lua5.1 m pcre proxy pthread quvi-0.9 ssl xml2 z

LIB_DEPENDS =	devel/json-glib \
		net/quvi/libquvi \
		textproc/libxml

.include <bsd.port.mk>
