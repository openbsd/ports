# $OpenBSD: Makefile,v 1.2 2007/10/27 23:44:41 ajacoutot Exp $

COMMENT=	data synchronization framework

DISTNAME=	libopensync-0.31
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

BUILD_DEPENDS=	:scons-*:devel/scons
LIB_DEPENDS=	sqlite3.>=8::databases/sqlite3 \
		xml2.>=9::textproc/libxml \
		glib-2.0.>=1200,gmodule-2.0.>=1200,gthread-2.0.>=1200::devel/glib2

NO_REGRESS=	Yes

do-build:
	@${SETENV} ${MAKE_ENV} scons -C ${WRKSRC} \
		CC=${CC} CXX=${CXX} APPEND_CCFLAGS="${CFLAGS}" \
		prefix=${PREFIX} debug=0

do-install:
	@${SETENV} ${MAKE_ENV} scons -C ${WRKSRC} install \
		DESTDIR=${WRKINST}
		
.include <bsd.port.mk>
