# $OpenBSD: Makefile,v 1.51 2018/05/25 22:43:41 sthen Exp $

PV=		7.0
V=		${PV}.30

REVISION=	    0
REVISION-mysqli=    1
REVISION-pdo_mysql= 1

BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"
CONFIGURE_ARGS+=	--with-pcre-jit=no

.include <bsd.port.mk>
