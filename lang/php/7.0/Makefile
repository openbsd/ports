# $OpenBSD: Makefile,v 1.50 2018/05/25 17:21:31 sthen Exp $

PV=		7.0
V=		${PV}.30
REVISION=	0

BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"
CONFIGURE_ARGS+=	--with-pcre-jit=no

.include <bsd.port.mk>
