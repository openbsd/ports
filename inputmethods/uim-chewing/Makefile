# $OpenBSD: Makefile,v 1.2 2009/01/09 07:38:09 kevlo Exp $

SHARED_ONLY=	Yes

COMMENT=	chewing input method for uim

DISTNAME=	uim-chewing-0.0.4.1

CATEGORIES=	inputmethods chinese

HOMEPAGE= 	http://code.google.com/p/uim/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext

MASTER_SITES=	http://uim.googlecode.com/files/

LIB_DEPENDS=	chewing::chinese/libchewing \
		gcroots,uim,uim-scm::inputmethods/uim

USE_X11=	Yes
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static

.include <bsd.port.mk>
