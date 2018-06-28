# $OpenBSD: Makefile,v 1.62 2018/06/28 16:24:48 sthen Exp $

PV=		7.0
V=		${PV}.30
REVISION=	8
REVISION-apache= 9
REVISION-gd=	10
REVISION-main=	10

BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"
CONFIGURE_ARGS+=	--with-pcre-jit=no

.include <bsd.port.mk>
