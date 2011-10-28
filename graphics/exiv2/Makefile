# $OpenBSD: Makefile,v 1.14 2011/10/28 22:03:36 jasper Exp $

COMMENT=	manipulate image meta-data such as exif and ipct

DISTNAME=	exiv2-0.22
REVISION=	0
CATEGORIES=	graphics devel

SHARED_LIBS +=  exiv2                5.0      # 11.0

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
