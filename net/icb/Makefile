# $OpenBSD: Makefile,v 1.30 2013/03/11 11:35:47 espie Exp $

COMMENT=	Internet CB - mostly-defunct chat client

DISTNAME=	icb-5.0.9
REVISION=	5
CATEGORIES=	net

MASTER_SITES=	ftp://ftp.swcp.com/pub/icb/clients/unix/
EXTRACT_SUFX=	.tar.Z

PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c curses termcap

do-configure:
	@sed -e s,@PREFIX@,${PREFIX},g \
	     -e s,@CC@,${CC},g ${FILESDIR}/config > ${WRKSRC}/config

NO_TEST=	Yes

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
