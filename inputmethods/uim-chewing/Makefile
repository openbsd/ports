# $OpenBSD: Makefile,v 1.17 2019/07/12 20:47:14 sthen Exp $

COMMENT=	chewing input method for uim

V =		0.1.0
DISTNAME=	uim-chewing-$V
REVISION =	2

CATEGORIES=	inputmethods chinese

HOMEPAGE= 	https://github.com/uim/uim-chewing

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB =  chewing gcroots iconv intl uim uim-scm

MASTER_SITES=	https://github.com/uim/uim-chewing/releases/download/uim-chewing-$V/

LIB_DEPENDS=	chinese/libchewing \
		inputmethods/uim>=1.8.6

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-static

.include <bsd.port.mk>
