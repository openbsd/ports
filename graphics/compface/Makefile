# $OpenBSD: Makefile,v 1.16 2006/07/06 06:52:57 jasper Exp $

COMMENT=	"programs and library for the 'X-face' mail and news header"

DISTNAME=	compface-1.5.2
CATEGORIES=	graphics
MASTER_SITES=	ftp://ftp.xemacs.org/pub/xemacs/aux/
HOMEPAGE=	http://freshmeat.net/projects/compface/

PERMIT_PACKAGE_CDROM=	"No fee"
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	"No fee"
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MAINTAINER=	Hans-Guenter Weigand <hgw@d1906.inka.de>

CONFIGURE_STYLE=gnu

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/{compface,uncompface} ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/xbm2xface.pl ${PREFIX}/bin/xbm2xface
	${INSTALL_DATA} ${WRKSRC}/compface.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/libcompface.a ${PREFIX}/lib
	${INSTALL_MAN} ${WRKSRC}/compface.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/compface.3 ${PREFIX}/man/man3

.include <bsd.port.mk>
