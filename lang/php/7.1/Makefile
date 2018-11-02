# $OpenBSD: Makefile,v 1.7 2018/11/02 18:48:39 naddy Exp $

PV=		7.1
V=		${PV}.23
REVISION=	4

BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"
CONFIGURE_ARGS+=	--with-pcre-jit=no

.include <bsd.port.mk>
