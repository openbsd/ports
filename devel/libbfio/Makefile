# $OpenBSD: Makefile,v 1.6 2020/03/18 09:22:56 rpointel Exp $

COMMENT =		basic file input/output abstraction C library

VERSION =		20191230
DISTNAME =		libbfio-alpha-${VERSION}
PKGNAME =		libbfio-${VERSION}

SHARED_LIBS +=  bfio                      0.0 # 1.0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/libyal/libbfio/wiki

# LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB =		pthread
BUILD_DEPENDS =	

MASTER_SITES =		https://github.com/libyal/libbfio/releases/download/${VERSION}/

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--mandir=${PREFIX}/man --disable-nls

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/libbfio-${VERSION}

.include <bsd.port.mk>
