# $OpenBSD: Makefile,v 1.9 2013/03/21 08:46:32 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	chewing input method for uim

DISTNAME=	uim-chewing-0.0.4.2
REVISION=		0

CATEGORIES=	inputmethods chinese

HOMEPAGE= 	http://code.google.com/p/uim/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB +=	chewing gcroots uim uim-scm

MODULES=		devel/gettext

MASTER_SITES=	http://uim.googlecode.com/files/

LIB_DEPENDS=	chinese/libchewing \
		inputmethods/uim

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static

.include <bsd.port.mk>
