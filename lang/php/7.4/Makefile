# $OpenBSD: Makefile,v 1.1 2020/04/21 20:38:31 sthen Exp $

PORTROACH=	limit:^7\.4
PHP_VERSION=	7.4.5
PHP_PKGSPEC=	>=7.4,<7.5

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS+=		devel/bison
YACC=			bison

#BUILD_DEPENDS+=		shells/bash
#CONFIGURE_SCRIPT=	${LOCALBASE}/bin/bash configure
CONFIGURE_ARGS+=	--without-valgrind

.include <bsd.port.mk>
