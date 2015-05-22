# $OpenBSD: Makefile,v 1.19 2015/05/22 11:31:15 ajacoutot Exp $

COMMENT=	manipulate image meta-data such as exif and ipct

DISTNAME=	exiv2-0.24
CATEGORIES=	graphics devel
REVISION=	0

SHARED_LIBS +=  exiv2                7.0      # 13.0

HOMEPAGE=	http://www.exiv2.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

WANTLIB += 	c m stdc++ z expat pthread

USE_GMAKE=	Yes
USE_GROFF =	Yes

CONFIGURE_STYLE=gnu

MODULES=	devel/gettext

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-static
CONFIGURE_ENV=	LDFLAGS="${LDFLAGS} -pthread"

NO_TEST=	Yes

.include <bsd.port.mk>
