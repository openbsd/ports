# $OpenBSD: Makefile,v 1.8 2010/04/16 17:36:00 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	data synchronization framework

V=		0.36
DISTNAME=	libopensync-${V}
PKGNAME=	${DISTNAME}p1
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

WANTLIB=	c pthread

SEPARATE_BUILD=	simple

MODULES=	devel/cmake \
		devel/gettext

MODCMAKE_WANTCOLOR=No
CFLAGS+=	-pthread

LIB_DEPENDS=	sqlite3.>=8::databases/sqlite3 \
		xml2.>=9::textproc/libxml \
		glib-2.0.>=1200,gmodule-2.0.>=1200,gthread-2.0.>=1200::devel/glib2

CONFIGURE_ARGS=	-DCMAKE_INSTALL_PREFIX="${PREFIX}"

NO_REGRESS=	Yes

.include <bsd.port.mk>
