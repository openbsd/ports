# $OpenBSD: Makefile,v 1.15 2003/10/23 00:33:44 naddy Exp $

COMMENT=	"SNPP client/server (alphanum pager software)"

DISTNAME=	qpage-3.3
CATEGORIES=	comms

PERMIT_PACKAGE_CDROM=	"license only grants use"
PERMIT_PACKAGE_FTP=	"license only grants use"
PERMIT_DISTFILES_CDROM=	"license only grants use"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.qpage.org/download/
EXTRACT_SUFX=	.tar.Z
CONFIGURE_STYLE=gnu

NO_REGRESS=	Yes

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/qpage ${PREFIX}/bin
		${INSTALL_MAN} ${WRKSRC}/qpage.man \
			${PREFIX}/man/man1/qpage.1
		${INSTALL_DATA_DIR} ${PREFIX}/share/examples/qpage
		${INSTALL_DATA} ${WRKSRC}/example.cf \
			${PREFIX}/share/examples/qpage/qpage.cf

.include <bsd.port.mk>
