# $OpenBSD: Makefile,v 1.3 2010/07/24 11:44:17 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	chewing input method for uim

DISTNAME=	uim-chewing-0.0.4.1
REVISION=	0

CATEGORIES=	inputmethods chinese

HOMEPAGE= 	http://code.google.com/p/uim/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB +=	chewing gcroots uim uim-scm

MODULES=		devel/gettext

MASTER_SITES=	http://uim.googlecode.com/files/

LIB_DEPENDS=	::chinese/libchewing \
		::inputmethods/uim

USE_X11=	Yes
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static

.include <bsd.port.mk>
