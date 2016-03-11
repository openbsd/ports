# $OpenBSD: Makefile,v 1.14 2016/03/11 20:28:27 naddy Exp $

SHARED_ONLY=	Yes

COMMENT=	chewing input method for uim

V =		0.1.0
DISTNAME=	uim-chewing-$V
REVISION =	1

CATEGORIES=	inputmethods chinese

HOMEPAGE= 	https://github.com/uim/uim-chewing

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += chewing gcroots uim uim-scm

MODULES=	devel/gettext

MASTER_SITES=	https://github.com/uim/uim-chewing/releases/download/uim-chewing-$V/

LIB_DEPENDS=	chinese/libchewing \
		inputmethods/uim>=1.8.6

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-static

.include <bsd.port.mk>
