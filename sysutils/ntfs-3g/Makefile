COMMENT =	FUSE NTFS driver with read/write support

V =		2022.5.17
REVISION =	0
DISTNAME =	ntfs-3g_ntfsprogs-${V}
PKGNAME =	ntfs_3g-${V}
SHARED_LIBS +=	ntfs-3g		1.0	# 89.0
CATEGORIES =	sysutils

HOMEPAGE =	https://www.tuxera.com/community/open-source-ntfs-3g/

MAINTAINER =	Paul Irofti <paul@irofti.net>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += c execinfo uuid fuse pthread

MASTER_SITES =	https://tuxera.com/opensource/
EXTRACT_SUFX =	.tgz

LIB_DEPENDS =		sysutils/e2fsprogs

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS =	--disable-ldconfig \
			--disable-mtab \
			--enable-extras \
			--enable-mount-helper \
			--with-fuse=external

post-install:
	rmdir ${PREFIX}/lib/ntfs-3g

.include <bsd.port.mk>
