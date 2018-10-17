# $OpenBSD: Makefile,v 1.70 2018/10/17 07:14:46 sthen Exp $

PV=		7.0
V=		${PV}.32
REVISION=	2

BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"
CONFIGURE_ARGS+=	--with-pcre-jit=no

.include <bsd.port.mk>
