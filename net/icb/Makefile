# $OpenBSD: Makefile,v 1.10 1999/12/14 04:17:14 brad Exp $
# $NetBSD: Makefile,v 1.6 1998/04/15 11:15:34 frueauf Exp $

DISTNAME=	icb-5.0.9
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.swcp.com/pub/icb/clients/unix/ \
		ftp://ftp.swcp.com/pub/icb/clients/ \
		ftp://ftp.empire.net/pub/icb/clients/ \
		ftp://ftp.cs.unm.edu/pub/armijo/icb.src/clients/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	ports@openbsd.org

do-configure:
	@sed	-e s,@PREFIX@,${PREFIX},g \
		-e s,@CC@,${CC},g ${FILESDIR}/config > ${WRKSRC}/config

do-install:
	@mkdir -p ${PREFIX}/lib/icb
	${INSTALL_PROGRAM} ${WRKSRC}/icb/icb ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/icbserverdb ${PREFIX}/lib/icb/sample.icbserverdb
	${INSTALL_DATA} ${WRKSRC}/sample.icbrc ${PREFIX}/lib/icb
.for f in bartender confuse echofile
	${INSTALL_DATA} ${WRKSRC}/contrib/${f} ${PREFIX}/lib/icb
.endfor

post-install:
	@PKG_PREFIX="${PREFIX}" sh ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
