# $OpenBSD: Makefile,v 1.11 2016/03/11 20:28:29 naddy Exp $

COMMENT=	library to parse flash media stream URLs

DISTNAME=	libquvi-0.9.4
REVISION=	0

SHARED_LIBS +=  quvi-0.9             0.0      # 8.0

MODULES=	devel/gettext \
		lang/lua

WANTLIB += crypto curl gcrypt glib-2.0 gpg-error idn m nghttp2 pcre proxy
WANTLIB += pthread ssl z ${MODLUA_WANTLIB}

BUILD_DEPENDS=	net/quvi/scripts
RUN_DEPENDS=	net/quvi/scripts
LIB_DEPENDS=	net/curl \
		net/libproxy \
		security/libgcrypt \
		${MODLUA_LIB_DEPENDS}

MODLUA_SA=	Yes

CONFIGURE_ARGS=	--with-manual

.include <bsd.port.mk>
