# $OpenBSD: Makefile,v 1.3 2007/03/15 08:04:22 espie Exp $

HOMEPAGE=	http://www.exiv2.org/
COMMENT=	'manipulate image meta-data such as exif and ipct'
CATEGORIES=	graphics devel
MASTER_SITES=	${HOMEPAGE}
DISTNAME=	exiv2-0.13

SHARED_LIBS +=	exiv2                1.0      # .0.0
WANTLIB += 	c m stdc++ z

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

MODULES=	devel/gettext

CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static

# GPL
PERMIT_DISTFILES_CDROM=Yes
PERMIT_PACKAGE_CDROM=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_PACKAGE_FTP=Yes

NO_REGRESS=	Yes

.include <bsd.port.mk>
