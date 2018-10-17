# $OpenBSD: Makefile,v 1.3 2018/10/17 07:14:46 sthen Exp $

PV=		7.1
V=		${PV}.23
REVISION=	0

BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"
CONFIGURE_ARGS+=	--with-pcre-jit=no

.include <bsd.port.mk>
