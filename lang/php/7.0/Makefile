# $OpenBSD: Makefile,v 1.72 2018/10/24 10:19:36 sthen Exp $

PV=		7.0
V=		${PV}.32
REVISION=	2
REVISION-main=	4
REVISION-apache=3

BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"
CONFIGURE_ARGS+=	--with-pcre-jit=no

.include <bsd.port.mk>
