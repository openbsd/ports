# $OpenBSD: Makefile,v 1.1.1.1 2016/10/15 06:35:00 rpointel Exp $

COMMENT =		basic file input/output abstraction C library

VERSION =		20160108
DISTNAME =		libbfio-alpha-${VERSION}
PKGNAME =		libbfio-${VERSION}

SHARED_LIBS +=  bfio                      0.0 # 1.0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/libyal/libbfio/wiki

# LGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		pthread

MASTER_SITES =		https://github.com/libyal/libbfio/releases/download/${VERSION}/

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	--mandir=${PREFIX}/man

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/libbfio-${VERSION}/

.include <bsd.port.mk>
