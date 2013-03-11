# $OpenBSD: Makefile,v 1.16 2013/03/11 10:50:10 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	data synchronization framework

V=		0.36
DISTNAME=	libopensync-${V}
REVISION =	4
SHARED_LIBS +=	opensync 1.1
CATEGORIES=	devel comms

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.opensync.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://www.opensync.org/download/releases/${V}/

WANTLIB=	c pthread sqlite3>=8 xml2>=9 glib-2.0>=1200 \
		gmodule-2.0>=1200 gthread-2.0>=1200

SEPARATE_BUILD=	Yes

MODULES=	devel/cmake \
		devel/gettext

CFLAGS+=	-pthread

LIB_DEPENDS=	textproc/libxml \
		devel/glib2

CONFIGURE_ARGS=	-DCMAKE_INSTALL_PREFIX="${PREFIX}"

NO_TEST=	Yes

.include <bsd.port.mk>
