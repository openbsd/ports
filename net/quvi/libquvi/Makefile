# $OpenBSD: Makefile,v 1.2 2012/05/11 06:53:10 jasper Exp $

COMMENT=	library to parse flash media stream URLs

DISTNAME=	libquvi-0.4.0
REVISION=	0
SHARED_LIBS +=  quvi                 0.0      # 7.0

MODULES=	devel/gettext \
		lang/lua

WANTLIB += crypto curl idn lua m ssl z

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	net/quvi/scripts
LIB_DEPENDS=	net/curl

USE_LIBTOOL=	Yes

CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--with-manual
# only needed for tests we don't install
CONFIGURE_ARGS+=--disable-soup

.include <bsd.port.mk>
