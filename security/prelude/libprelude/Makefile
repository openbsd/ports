# $OpenBSD: Makefile,v 1.27 2010/10/18 21:41:47 espie Exp $

COMMENT=	Prelude framework library

MODPY_EGG_VERSION=0.9.24.1
DISTNAME=	libprelude-${MODPY_EGG_VERSION}
PKGNAME=	prelude-${DISTNAME}

REVISION=	2

MASTER_SITES=	http://www.prelude-ids.com/download/releases/libprelude/

SHARED_LIBS=	prelude	20.1

MODULES=	devel/gettext \
		lang/python

CONFIGURE_STYLE=gnu
USE_GROFF =	Yes

WANTLIB=	c gcrypt tasn1 z gpg-error gnutls

LIB_DEPENDS=	::security/libgpg-error \
		::security/gnutls

.include <bsd.port.mk>
