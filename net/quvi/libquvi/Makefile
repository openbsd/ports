# $OpenBSD: Makefile,v 1.13 2017/11/21 00:13:03 naddy Exp $

COMMENT=	library to parse flash media stream URLs

DISTNAME=	libquvi-0.9.4
REVISION=	2

SHARED_LIBS +=  quvi-0.9             0.0      # 8.0

MODULES=	lang/lua

WANTLIB =  ${MODLUA_WANTLIB}
WANTLIB += crypto curl gcrypt glib-2.0 gpg-error iconv intl m nghttp2
WANTLIB += pcre proxy pthread ssl z

BUILD_DEPENDS=	net/quvi/scripts
RUN_DEPENDS=	net/quvi/scripts
LIB_DEPENDS=	net/curl \
		net/libproxy \
		security/libgcrypt \
		${MODLUA_LIB_DEPENDS}

MODLUA_SA=	Yes

CONFIGURE_ARGS=	--with-manual

.include <bsd.port.mk>
