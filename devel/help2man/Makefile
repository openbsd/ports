# $OpenBSD: Makefile,v 1.15 2013/11/09 23:19:02 naddy Exp $

COMMENT=	generates simple manual pages from program output

DISTNAME=	help2man-1.41.1
REVISION=	0
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=help2man/}

HOMEPAGE=	https://www.gnu.org/software/help2man/

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
