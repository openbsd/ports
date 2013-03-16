# $OpenBSD: Makefile,v 1.14 2013/03/16 08:25:55 landry Exp $

COMMENT=	generates simple manual pages from program output

DISTNAME=	help2man-1.41.1
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=help2man/}

HOMEPAGE=	http://www.gnu.org/software/help2man/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
NO_TEST=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-nls

post-install:
	rmdir ${PREFIX}/lib/help2man

.include <bsd.port.mk>
