# $OpenBSD: Makefile,v 1.3 2003/06/01 23:14:16 margarida Exp $

COMMENT=	"monitoring and managing daemons utility"

VERSION=	3.2
DISTNAME=	monit-${VERSION}
CATEGORIES=	sysutils

HOMEPAGE=	http://www.tildeslash.com/monit/

MASTER_SITES=	${HOMEPAGE}dist/

MAINTAINER=	Margarida Sequeira <margarida@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu

USE_GMAKE=	Yes

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/monit
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/monit/api-docs
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/monit
	cd ${WRKSRC} && ${INSTALL_DATA} FAQ.txt README.SSL \
	  ${PREFIX}/share/doc/monit
	cd ${WRKSRC}/doc && ${INSTALL_DATA} monit.html examples.html \
	  ${PREFIX}/share/doc/monit
	cd ${WRKSRC}/doc/api-docs && ${INSTALL_DATA} * \
	  ${PREFIX}/share/doc/monit/api-docs
	cd ${WRKSRC} && ${INSTALL_DATA} monitrc \
	  ${PREFIX}/share/examples/monit

.include <bsd.port.mk>
