# $OpenBSD: Makefile,v 1.19 2019/07/12 20:44:39 sthen Exp $

COMMENT=	data synchronization framework

V=		0.36
DISTNAME=	libopensync-${V}
REVISION =	5
SHARED_LIBS +=	opensync 1.1
CATEGORIES=	devel comms

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.opensync.org/

# LGPL
PERMIT_PACKAGE=	Yes

WANTLIB=  c glib-2.0>=1200 gmodule-2.0>=1200 gthread-2.0>=1200 iconv
WANTLIB+= intl pthread sqlite3>=8 xml2>=9

MASTER_SITES=	http://www.opensync.org/download/releases/${V}/


SEPARATE_BUILD=	Yes

MODULES=	devel/cmake

CFLAGS+=	-pthread

LIB_DEPENDS=	textproc/libxml \
		devel/glib2

CONFIGURE_ARGS=	-DCMAKE_INSTALL_PREFIX="${PREFIX}"

NO_TEST=	Yes

.include <bsd.port.mk>
