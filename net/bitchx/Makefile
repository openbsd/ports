# $OpenBSD: Makefile,v 1.1.1.1 1999/03/07 02:13:13 brad Exp $
# $FreeBSD: Makefile,v 1.3 1998/07/21 11:38:44 eivind Exp $

DISTNAME=	ircii-pana-75p3
PKGNAME=	bitchx-75p3
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.bitchx.com/pub/BitchX/source/

MAINTAINER=	brad@openbsd.org

GNU_CONFIGURE=	yes

WRKSRC=		${WRKDIR}/BitchX

post-patch:
	${SED} -e s,__PREFIX__,$(PREFIX), $(WRKSRC)/include/config.h > $(WRKSRC)/include/config.h.new
	${MV} $(WRKSRC)/include/config.h.new $(WRKSRC)/include/config.h

do-install:
	${MKDIR} ${PREFIX}/lib/bitchx
	${INSTALL_PROGRAM} ${WRKSRC}/source/BitchX ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/source/wserv ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/BitchX.help ${PREFIX}/lib/bitchx

.include <bsd.port.mk>
