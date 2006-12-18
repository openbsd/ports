# $OpenBSD: Makefile,v 1.2 2006/12/18 18:55:30 espie Exp $

HOMEPAGE=	http://www.exiv2.org/
COMMENT=	'manipulate image meta-data such as exif and ipct'
CATEGORIES=	graphics devel
MASTER_SITES=	${HOMEPAGE}
DISTNAME=	exiv2-0.12

SHARED_LIBS +=	exiv2                0.1      # .0.0
WANTLIB += 	c m stdc++ z

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static

# GPL
PERMIT_DISTFILES_CDROM=Yes
PERMIT_PACKAGE_CDROM=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_PACKAGE_FTP=Yes

NO_REGRESS=	Yes

.include <bsd.port.mk>
