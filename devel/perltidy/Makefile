# $OpenBSD: Makefile,v 1.1.1.1 2001/03/30 21:13:47 danh Exp $

COMMENT=	"tool to indent and reformat perl scripts"

DISTNAME=	perltidy-20010328
CATEGORIES=	devel
NEED_VERSION=	1.378
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

.include <bsd.port.mk>
