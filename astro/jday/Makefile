# $OpenBSD: Makefile,v 1.4 2002/02/08 18:55:37 naddy Exp $

COMMENT=	"convert calendar dates to/from astronomical julian dates"

DISTNAME=	jday-1.2
CATEGORIES=	astro
NEED_VERSION=	1.504
HOMEPAGE=	http://jday.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
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

NO_REGRESS=	Yes

.include <bsd.port.mk>
