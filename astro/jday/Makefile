# $OpenBSD: Makefile,v 1.6 2002/12/29 15:11:06 fgsch Exp $

COMMENT=	"convert calendar dates to/from astronomical julian dates"

DISTNAME=	jday-1.2
CATEGORIES=	astro
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
