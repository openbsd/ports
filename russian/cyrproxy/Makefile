# $FreeBSD: ports/russian/cyrproxy/Makefile,v 1.4 1999/08/31 01:46:57 peter Exp $
# $OpenBSD: Makefile,v 1.2 2000/02/11 01:10:11 espie Exp $

DISTNAME=		cyrproxy-1.4.2
CATEGORIES=		russian net www
MASTER_SITES=		ftp://ftp.lexa.ru/pub/domestic/lexa/

MAINTAINER=		form@openbsd.org

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/cyrproxy
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cyrproxy
#	mkdir -p ${PREFIX}/www/cgi-bin
	${INSTALL_PROGRAM} ${WRKSRC}/cyrproxy ${PREFIX}/libexec
	${INSTALL_PROGRAM} ${WRKSRC}/tcpspy ${PREFIX}/libexec
	${INSTALL_PROGRAM} ${WRKSRC}/cyrcoder/cyrtrans ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/discover/discover ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/cyrcoder/cyrwww ${PREFIX}/share/cyrproxy
	${INSTALL_DATA} ${WRKSRC}/config.gen \
		${PREFIX}/share/cyrproxy/cyrproxy.conf.sample
.for f in alt-iso alt-koi8 alt-win iso-alt iso-koi8 iso-win koi8-alt \
	koi8-iso koi8-mac koi8-win mac-koi8 win-alt win-iso win-koi8
	${INSTALL_DATA} ${WRKSRC}/tables/${f} ${PREFIX}/share/cyrproxy
.endfor
.for f in History README README.http
	${INSTALL_DATA} ${WRKSRC}/${f} ${PREFIX}/share/doc/cyrproxy
.endfor
	@PKG_PREFIX="${PREFIX}" sh ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
