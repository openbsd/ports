# $OpenBSD: Makefile,v 1.15 2012/04/26 10:36:09 jasper Exp $

COMMENT=	manipulate image meta-data such as exif and ipct

DISTNAME=	exiv2-0.23
CATEGORIES=	graphics devel

SHARED_LIBS +=  exiv2                6.0      # 12.0

HOMEPAGE=	http://www.exiv2.org/

# GPLv2+
PERMIT_DISTFILES_CDROM= Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

WANTLIB += 	c m stdc++ z expat pthread

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes
USE_GROFF =	Yes

CONFIGURE_STYLE=gnu

MODULES=	devel/gettext

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-static
CONFIGURE_ENV=	LDFLAGS="${LDFLAGS} -pthread"

NO_REGRESS=	Yes

.include <bsd.port.mk>
