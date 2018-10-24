# $OpenBSD: Makefile,v 1.73 2018/10/24 14:28:07 sthen Exp $

PV=		7.0
V=		${PV}.32
REVISION=	5

BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"
CONFIGURE_ARGS+=	--with-pcre-jit=no

.include <bsd.port.mk>
