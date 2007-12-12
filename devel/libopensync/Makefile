# $OpenBSD: Makefile,v 1.3 2007/12/12 10:42:07 ajacoutot Exp $

COMMENT=	data synchronization framework

DISTNAME=	libopensync-0.31
PKGNAME=	${DISTNAME}p0
SHARED_LIBS +=	opensync 1.0
CATEGORIES=	devel comms

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.opensync.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.bsdfrog.org/OpenBSD/distfiles/

WANTLIB=	c pthread

MODULES=	devel/scons
MODSCONS_FLAGS=	APPEND_CCFLAGS="${CFLAGS}"

LIB_DEPENDS=	sqlite3.>=8::databases/sqlite3 \
		xml2.>=9::textproc/libxml \
		glib-2.0.>=1200,gmodule-2.0.>=1200,gthread-2.0.>=1200::devel/glib2

NO_REGRESS=	Yes

.include <bsd.port.mk>
