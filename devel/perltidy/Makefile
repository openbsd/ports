# $OpenBSD: Makefile,v 1.3 2002/03/21 20:46:25 espie Exp $

COMMENT=	"tool to indent and reformat perl scripts"

DISTNAME=	perltidy-20010328
CATEGORIES=	devel
NEED_VERSION=	1.515
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= perltidy
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://perltidy.sourceforge.net/

MAINTAINER=	Pete Fritchman <petef@databits.net>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/perltidy ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/perl2web.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/perltidy.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/perltidy
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/perltidy
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/perltidy
	${INSTALL_DATA} ${WRKSRC}/docs/* ${PREFIX}/share/doc/perltidy

.include <bsd.port.mk>
