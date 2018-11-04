# $OpenBSD: Makefile,v 1.8 2018/11/04 18:17:29 sthen Exp $

PV=		7.1
V=		${PV}.23
REVISION=	4
REVISION-main=	5

BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"
CONFIGURE_ARGS+=	--with-pcre-jit=no

.include <bsd.port.mk>
