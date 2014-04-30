# $OpenBSD: Makefile,v 1.5 2014/04/30 23:07:25 pirofti Exp $

COMMENT =	FUSE NTFS driver with read/write support

V =		2014.2.15
DISTNAME =	ntfs-3g_ntfsprogs-${V}
PKGNAME =	ntfs_3g-${V}
SHARED_LIBS +=	ntfs-3g		0.0	# .84
CATEGORIES =	sysutils

HOMEPAGE =	http://www.tuxera.com/

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c uuid fuse

MASTER_SITES =	${HOMEPAGE}/opensource/
EXTRACT_SUFX =	.tgz

LIB_DEPENDS =		sysutils/e2fsprogs

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--disable-mtab \
			--disable-ldconfig

post-install:
	rmdir ${WRKINST}/lib

.include <bsd.port.mk>
