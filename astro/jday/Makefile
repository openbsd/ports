# $OpenBSD: Makefile,v 1.2 2001/04/12 04:17:52 obecian Exp $

COMMENT=	"convert calendar dates to/from astronomical julian dates"
DISTNAME=	jday-1.2
CATEGORIES=	astro
NEED_VERSION=	1.364
HOMEPAGE=	http://jday.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@mips.inka.de>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	jday

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/jday
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/jday

.include <bsd.port.mk>
