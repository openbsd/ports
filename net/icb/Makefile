# $OpenBSD: Makefile,v 1.13 2000/03/22 22:39:40 turan Exp $
# $NetBSD: Makefile,v 1.6 1998/04/15 11:15:34 frueauf Exp $

DISTNAME=	icb-5.0.9
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.swcp.com/pub/icb/clients/unix/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

do-configure:
	@sed -e s,@PREFIX@,${PREFIX},g \
	     -e s,@CC@,${CC},g ${FILESDIR}/config > ${WRKSRC}/config

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/icb
	${INSTALL_PROGRAM} ${WRKSRC}/icb/icb ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/icbserverdb ${PREFIX}/lib/icb/sample.icbserverdb
	${INSTALL_DATA} ${WRKSRC}/sample.icbrc ${PREFIX}/lib/icb
	cd ${WRKSRC}/contrib; ${INSTALL_DATA} bartender confuse echofile \
		${PREFIX}/lib/icb

post-install:
	@PKG_PREFIX="${PREFIX}" sh ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
