# $OpenBSD: Makefile,v 1.5 2002/05/13 18:50:36 espie Exp $

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

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=jday/}

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/jday
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/jday

NO_REGRESS=	Yes

.include <bsd.port.mk>
