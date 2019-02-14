# $OpenBSD: Makefile,v 1.30 2019/02/14 16:03:34 jca Exp $

COMMENT=	manipulate image meta-data such as exif and ipct

DISTNAME=	exiv2-0.26-trunk
PKGNAME=	exiv2-0.26
CATEGORIES=	graphics devel
EPOCH=		0
REVISION=	0

SHARED_LIBS +=  exiv2                11.0      # 14.0

HOMEPAGE=	http://www.exiv2.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} c expat iconv intl m z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	http://www.exiv2.org/builds/

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu

BUILD_DEPENDS=	devel/gettext-tools

LIB_DEPENDS=	devel/gettext

CONFIGURE_ARGS=	--enable-static

NO_TEST=	Yes

WRKDIST=		${WRKDIR}/exiv2-trunk

.include <bsd.port.mk>
