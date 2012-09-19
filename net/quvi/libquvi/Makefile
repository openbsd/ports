# $OpenBSD: Makefile,v 1.5 2012/09/19 08:15:09 jasper Exp $

COMMENT=	library to parse flash media stream URLs

DISTNAME=	libquvi-0.4.0
REVISION=	3
SHARED_LIBS +=  quvi                 0.0      # 7.0

MODULES=	devel/gettext \
		lang/lua

WANTLIB += crypto curl idn ${MODLUA_WANTLIB} m ssl z

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	net/quvi/scripts
LIB_DEPENDS=	net/curl \
		${MODLUA_LIB_DEPENDS}

USE_LIBTOOL=	Yes

MODLUA_SA=	Yes

CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--with-manual
# only needed for tests we don't install
CONFIGURE_ARGS+=--disable-soup

.include <bsd.port.mk>
