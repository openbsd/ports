# $OpenBSD: Makefile,v 1.1.1.1 2003/04/17 22:45:19 wilfried Exp $

COMMENT=	"distributed command execution"

DISTNAME=	tentakel-0.3
CATEGORIES=	sysutils
MAINTAINER=	Sebastian Stark <seb@todesplanet.de>
HOMEPAGE=	http://tentakel.sf.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tentakel/}
EXTRACT_SUFX=	.tgz

NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/tentakel ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/tentakel.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tentakel
	${INSTALL_DATA} ${WRKSRC}/{README,INSTALL} ${PREFIX}/share/doc/tentakel
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tentakel
	${INSTALL_DATA} ${WRKSRC}/hostlist.example ${PREFIX}/share/examples/tentakel

.include <bsd.port.mk>
