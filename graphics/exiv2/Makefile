# $OpenBSD: Makefile,v 1.24 2017/06/17 15:04:08 schwarze Exp $

COMMENT=	manipulate image meta-data such as exif and ipct

DISTNAME=	exiv2-0.25
CATEGORIES=	graphics devel
REVISION=	1

SHARED_LIBS +=  exiv2                8.0      # 14.0

HOMEPAGE=	http://www.exiv2.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

WANTLIB += 	c iconv intl m ${LIBCXX} z expat pthread

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu

BUILD_DEPENDS=	devel/gettext-tools

LIB_DEPENDS=	devel/gettext

CONFIGURE_ARGS=	--enable-static
CONFIGURE_ENV=	LDFLAGS="${LDFLAGS} -pthread"

NO_TEST=	Yes

.include <bsd.port.mk>
