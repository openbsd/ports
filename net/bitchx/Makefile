# $OpenBSD: Makefile,v 1.4 1999/03/22 14:52:15 brad Exp $
# $FreeBSD: Makefile,v 1.3 1998/07/21 11:38:44 eivind Exp $

DISTNAME=	ircii-pana-75p3
PKGNAME=	bitchx-75p3
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.bitchx.com/pub/BitchX/source/

MAINTAINER=	brad@openbsd.org

.if ${MACHINE_ARCH} == "alpha"
BROKEN=                "Currently does not build on Alpha"
.endif

GNU_CONFIGURE=	yes

WRKSRC=		${WRKDIR}/BitchX

post-extract:
	@chmod u+x ${WRKSRC}/WinNT/include
	@chmod u+x ${WRKSRC}/WinNT/source

post-patch:
	${SED} -e s,__PREFIX__,$(PREFIX), $(WRKSRC)/include/config.h > $(WRKSRC)/include/config.h.new
	${MV} $(WRKSRC)/include/config.h.new $(WRKSRC)/include/config.h

do-install:
	${MKDIR} ${PREFIX}/lib/bitchx
	${INSTALL_PROGRAM} ${WRKSRC}/source/BitchX ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/source/wserv ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/BitchX.help ${PREFIX}/lib/bitchx

.include <bsd.port.mk>
