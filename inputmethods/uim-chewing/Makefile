# $OpenBSD: Makefile,v 1.12 2015/01/21 06:23:33 bentley Exp $

SHARED_ONLY=	Yes

COMMENT=	chewing input method for uim

DISTNAME=	uim-chewing-0.1.0
REVISION =	0

CATEGORIES=	inputmethods chinese

HOMEPAGE= 	https://code.google.com/p/uim/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += chewing gcroots uim uim-scm

MODULES=	devel/gettext

MASTER_SITES=	https://uim.googlecode.com/files/

LIB_DEPENDS=	chinese/libchewing \
		inputmethods/uim>=1.8.6

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static

.include <bsd.port.mk>
