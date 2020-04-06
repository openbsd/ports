# $OpenBSD: Makefile,v 1.14 2020/04/06 00:04:32 pirofti Exp $

COMMENT =	FUSE NTFS driver with read/write support

V =		2017.3.23
DISTNAME =	ntfs-3g_ntfsprogs-${V}
PKGNAME =	ntfs_3g-${V}
SHARED_LIBS +=	ntfs-3g		0.2	# .88
CATEGORIES =	sysutils
REVISION =	1

HOMEPAGE =	https://www.tuxera.com/community/open-source-ntfs-3g/

MAINTAINER =	Paul Irofti <paul@irofti.net>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += c uuid fuse

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

.include <bsd.port.mk>
