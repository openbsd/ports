# $OpenBSD: Makefile,v 1.4 2002/12/29 20:31:41 fgsch Exp $
#

COMMENT=	"portable, encrypted, compressed tunnel"

DISTNAME=	zebedee-2.2.2
CATEGORIES=	security net

HOMEPAGE=	http://www.winton.org.uk/zebedee/

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://www.winton.org.uk/zebedee/ \
		http://www.hewgill.com/zebedee/

MAINTAINER=	Jon Leonard <jleonard@iss.net>

LIB_DEPENDS=	bz2::archivers/bzip2
NO_REGRESS=	Yes

MAKE_FLAGS+=	OS=openbsd

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/zebedee ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/ftpgw.tcl ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/zebedee.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/ftpgw.tcl.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/zebedee
	${INSTALL_DATA} ${WRKSRC}/server.zbd ${PREFIX}/share/examples/zebedee
	${INSTALL_DATA} ${WRKSRC}/vncviewer.zbd ${PREFIX}/share/examples/zebedee
	${INSTALL_DATA} ${WRKSRC}/vncserver.zbd ${PREFIX}/share/examples/zebedee
	${INSTALL_DATA} ${WRKSRC}/server.key ${PREFIX}/share/examples/zebedee
	${INSTALL_DATA} ${WRKSRC}/server.id ${PREFIX}/share/examples/zebedee
	${INSTALL_DATA} ${WRKSRC}/client1.key ${PREFIX}/share/examples/zebedee
	${INSTALL_DATA} ${WRKSRC}/client2.key ${PREFIX}/share/examples/zebedee
	${INSTALL_DATA} ${WRKSRC}/clients.id ${PREFIX}/share/examples/zebedee
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/zebedee
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/zebedee
	${INSTALL_DATA} ${WRKSRC}/LICENCE.txt ${PREFIX}/share/doc/zebedee
	${INSTALL_DATA} ${WRKSRC}/CHANGES.txt ${PREFIX}/share/doc/zebedee
	${INSTALL_DATA} ${WRKSRC}/zebedee.html ${PREFIX}/share/doc/zebedee
	${INSTALL_DATA} ${WRKSRC}/ftpgw.tcl.html ${PREFIX}/share/doc/zebedee

.include <bsd.port.mk>
