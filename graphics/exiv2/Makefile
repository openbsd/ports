# $OpenBSD: Makefile,v 1.21 2016/03/11 20:28:26 naddy Exp $

COMMENT=	manipulate image meta-data such as exif and ipct

DISTNAME=	exiv2-0.25
CATEGORIES=	graphics devel

SHARED_LIBS +=  exiv2                8.0      # 14.0

HOMEPAGE=	http://www.exiv2.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

WANTLIB += 	c m stdc++ z expat pthread

USE_GMAKE=	Yes
USE_GROFF =	Yes

CONFIGURE_STYLE=gnu

MODULES=	devel/gettext

CONFIGURE_ARGS=	--enable-static
CONFIGURE_ENV=	LDFLAGS="${LDFLAGS} -pthread"

NO_TEST=	Yes

.include <bsd.port.mk>
