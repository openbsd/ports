# $OpenBSD: Makefile,v 1.3 2012/05/15 19:38:01 jasper Exp $

COMMENT=	library to parse flash media stream URLs

DISTNAME=	libquvi-0.4.0
REVISION=	1
SHARED_LIBS +=  quvi                 0.0      # 7.0

MODULES=	devel/gettext \
		lang/lua

WANTLIB += crypto curl idn ${MODLUA_WANTLIB} m ssl z

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	net/quvi/scripts
LIB_DEPENDS=	net/curl \
		${MODLUA_LIB_DEPENDS}

USE_LIBTOOL=	Yes

CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--with-manual
# only needed for tests we don't install
CONFIGURE_ARGS+=--disable-soup

.include <bsd.port.mk>
