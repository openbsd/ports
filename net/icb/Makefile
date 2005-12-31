# $OpenBSD: Makefile,v 1.23 2005/12/31 02:09:46 fgsch Exp $
# $NetBSD: Makefile,v 1.6 1998/04/15 11:15:34 frueauf Exp $

COMMENT=	"Internet CB - mostly-defunct chat client"

DISTNAME=	icb-5.0.9
PKGNAME=	${DISTNAME}p2
CATEGORIES=	net

MASTER_SITES=	ftp://ftp.swcp.com/pub/icb/clients/unix/
EXTRACT_SUFX=	.tar.Z

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c curses termcap

do-configure:
	@sed -e s,@PREFIX@,${PREFIX},g \
	     -e s,@CC@,${CC},g ${FILESDIR}/config > ${WRKSRC}/config

NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/icb
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/icb
	${INSTALL_PROGRAM} ${WRKSRC}/icb/icb ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/icbserverdb \
		${PREFIX}/share/examples/icb/sample.icbserverdb
	${INSTALL_DATA} ${WRKSRC}/sample.icbrc \
		${PREFIX}/share/examples/icb
	cd ${WRKSRC}/contrib; ${INSTALL_DATA} bartender confuse echofile \
		${PREFIX}/lib/icb

.include <bsd.port.mk>
