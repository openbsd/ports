# $OpenBSD: Makefile,v 1.2 2013/06/15 14:25:28 ajacoutot Exp $

COMMENT =	FUSE NTFS driver with read/write support

V =		2013.1.13
DISTNAME =	ntfs-3g_ntfsprogs-${V}
PKGNAME =	ntfs_3g-${V}
SHARED_LIBS +=	ntfs-3g		0.0	# .84
CATEGORIES =	sysutils
REVISION =	0

HOMEPAGE =	http://www.tuxera.com/

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c e2fs-uuid fuse

MASTER_SITES =	${HOMEPAGE}/opensource/
EXTRACT_SUFX =	.tgz

LIB_DEPENDS =		sysutils/e2fsprogs

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--disable-mtab \
			--disable-ldconfig

# uuid_generate(): properly pick up uuid from e2fsprogs instead of ossp-uuid
pre-configure:
	perl -pi -e "s,-luuid,-le2fs-uuid,g" ${WRKSRC}/configure \

post-install:
	rmdir ${WRKINST}/lib

.include <bsd.port.mk>
