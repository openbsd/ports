# $OpenBSD: Makefile,v 1.1.1.1 2022/01/03 10:32:50 sthen Exp $

COMMENT=	debug and development tools for PHP

DISTNAME=	xdebug-3.1.2
CATEGORIES=	devel

# own license based on PHP's, see LICENSE
PERMIT_PACKAGE=	Yes

WANTLIB=	m z

COMPILER=	base-clang ports-gcc

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

MODPHP_DO_SAMPLE=
PV=		${MODPHP_VERSION}
MODULE_NAME=	xdebug
SUBST_VARS+=	PV MODULE_NAME

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/php-${MODPHP_VERSION}
	${INSTALL_DATA} ${FILESDIR}/xdebug.ini ${PREFIX}/share/examples/php-${MODPHP_VERSION}

.include <bsd.port.mk>
