# $OpenBSD: Makefile,v 1.3 2002/10/28 14:26:31 naddy Exp $

COMMENT= 		"personal finance tracking and performance tool"

VERSION=		2.6
DISTNAME=		xinvest-${VERSION}
CATEGORIES=		productivity x11

HOMEPAGE= 		http://sunsite.dk/xinvest/

MAINTAINER=		Lurene Grenier <lurene@daemonkitty.net>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

USE_MOTIF=	Yes
CONFIGURE_STYLE= imake
INSTALL_MAN=	No	# no manual page

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/Xinvest ${PREFIX}/bin/xinvest
	${INSTALL_DATA} ${WRKSRC}/Xinvest.ad ${PREFIX}/lib/X11/app-defaults/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xinvest
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/xinvest

.include <bsd.port.mk>
