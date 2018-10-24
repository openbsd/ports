# $OpenBSD: Makefile,v 1.6 2018/10/24 14:28:07 sthen Exp $

PV=		7.2
V=		${PV}.11
REVISION=	3

BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"
CONFIGURE_ARGS+=	--with-pcre-jit=no

.include <bsd.port.mk>
