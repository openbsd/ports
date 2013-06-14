# $OpenBSD: Makefile,v 1.1.1.1 2013/06/14 13:49:50 pirofti Exp $

COMMENT =	FUSE NTFS driver with read/write support

V =		2013.1.13
DISTNAME =	ntfs-3g_ntfsprogs-${V}
PKGNAME =	ntfs_3g-${V}
SHARED_LIBS +=	ntfs-3g		0.0	# .84
CATEGORIES =	sysutils

HOMEPAGE =	http://www.tuxera.com/

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${HOMEPAGE}/opensource/
EXTRACT_SUFX =	.tgz

WANTLIB =	c

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
