# $OpenBSD: Makefile,v 1.13 2012/03/29 13:38:30 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	data synchronization framework

V=		0.36
DISTNAME=	libopensync-${V}
REVISION =	2
SHARED_LIBS +=	opensync 1.1
CATEGORIES=	devel comms

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.opensync.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.opensync.org/download/releases/${V}/

WANTLIB=	c pthread sqlite3>=8 xml2>=9 glib-2.0>=1200 \
		gmodule-2.0>=1200 gthread-2.0>=1200

SEPARATE_BUILD=	Yes

MODULES=	devel/cmake \
		devel/gettext

CFLAGS+=	-pthread

LIB_DEPENDS=	databases/sqlite3 \
		textproc/libxml \
		devel/glib2

CONFIGURE_ARGS=	-DCMAKE_INSTALL_PREFIX="${PREFIX}"

NO_REGRESS=	Yes

.include <bsd.port.mk>
