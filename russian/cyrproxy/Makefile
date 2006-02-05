# $FreeBSD: ports/russian/cyrproxy/Makefile,v 1.4 1999/08/31 01:46:57 peter Exp $
# $OpenBSD: Makefile,v 1.17 2006/02/05 15:08:43 david Exp $

COMMENT=	"cyrillic proxy for network protocols"

DISTNAME=	cyrproxy-1.4.2
PKGNAME=	${DISTNAME}p0
CATEGORIES=	russian net www

MASTER_SITES=	ftp://ftp.lexa.ru/pub/domestic/lexa/

HOMEPAGE=	http://www.lexa.ru/lexa/cyrproxy.html

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c 

NO_REGRESS=	Yes

pre-configure:
	@perl -pi -e "s,%%SYSCONFDIR%%,${SYSCONFDIR}," ${WRKSRC}/Makefile

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/cyrproxy
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cyrproxy
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

.include <bsd.port.mk>
