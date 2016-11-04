# $OpenBSD: Makefile,v 1.12 2016/11/04 11:35:20 sthen Exp $

COMMENT=	library to parse flash media stream URLs

DISTNAME=	libquvi-0.9.4
REVISION=	1

SHARED_LIBS +=  quvi-0.9             0.0      # 8.0

MODULES=	devel/gettext \
		lang/lua

WANTLIB += ${MODLUA_WANTLIB}
WANTLIB += crypto curl gcrypt glib-2.0 gpg-error m nghttp2 pcre proxy
WANTLIB += pthread ssl z

BUILD_DEPENDS=	net/quvi/scripts
RUN_DEPENDS=	net/quvi/scripts
LIB_DEPENDS=	net/curl \
		net/libproxy \
		security/libgcrypt \
		${MODLUA_LIB_DEPENDS}

MODLUA_SA=	Yes

CONFIGURE_ARGS=	--with-manual

.include <bsd.port.mk>
