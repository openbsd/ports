# $OpenBSD: Makefile,v 1.13 2013/03/14 10:03:19 ajacoutot Exp $

COMMENT=	generates simple manual pages from program output

DISTNAME=	help2man-1.41.1
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=help2man/}

HOMEPAGE=	http://www.gnu.org/software/help2man/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
NO_REGRESS=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-nls

post-install:
	rmdir ${PREFIX}/lib/help2man

.include <bsd.port.mk>
