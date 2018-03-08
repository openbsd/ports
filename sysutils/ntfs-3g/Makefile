# $OpenBSD: Makefile,v 1.10 2018/03/08 13:42:31 pirofti Exp $

COMMENT =	FUSE NTFS driver with read/write support

V =		2017.3.23
DISTNAME =	ntfs-3g_ntfsprogs-${V}
PKGNAME =	ntfs_3g-${V}
SHARED_LIBS +=	ntfs-3g		0.2	# .88
CATEGORIES =	sysutils

HOMEPAGE =	https://www.tuxera.com/

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c uuid fuse

MASTER_SITES =	${HOMEPAGE}/opensource/
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
