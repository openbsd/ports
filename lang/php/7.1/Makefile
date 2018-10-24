# $OpenBSD: Makefile,v 1.5 2018/10/24 10:19:36 sthen Exp $

PV=		7.1
V=		${PV}.23
REVISION=	0
REVISION-main=	2
REVISION-apache=1

BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"
CONFIGURE_ARGS+=	--with-pcre-jit=no

.include <bsd.port.mk>
