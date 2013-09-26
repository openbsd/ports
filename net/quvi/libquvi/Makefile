# $OpenBSD: Makefile,v 1.8 2013/09/26 15:53:50 ajacoutot Exp $

COMMENT=	library to parse flash media stream URLs

DISTNAME=	libquvi-0.9.3

SHARED_LIBS +=  quvi-0.9             0.0      # 8.0

MODULES=	devel/gettext \
		lang/lua

WANTLIB += crypto curl gcrypt glib-2.0 gpg-error idn m pcre proxy
WANTLIB += pthread ssl z ${MODLUA_WANTLIB}

BUILD_DEPENDS=	net/quvi/scripts
RUN_DEPENDS=	net/quvi/scripts
LIB_DEPENDS=	net/curl \
		net/libproxy \
		security/libgcrypt \
		${MODLUA_LIB_DEPENDS}

MODLUA_SA=	Yes

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-manual

# only needed for tests we don't install
CONFIGURE_ARGS+=--disable-soup

.include <bsd.port.mk>
