# $OpenBSD: Makefile,v 1.3 1999/04/09 04:11:50 brad Exp $
# $FreeBSD: Makefile,v 1.1.1.1 1998/04/04 04:58:25 obrien Exp $

DISTNAME=	sniffit.0.3.5
PKGNAME=	sniffit-0.3.5
CATEGORIES=	net security
MASTER_SITES=	http://reptile.rug.ac.be/~coder/sniffit/files/ \
		ftp://ftphost.manawatu.gen.nz/pub/unix/net/security/sniffers/sniffit/ \
		ftp://ftp.netbsd.org/pub/NetBSD/packages/distfiles

MAINTAINER=	ports@openbsd.org

GNU_CONFIGURE=	yes
ALL_TARGET=

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/sniffit ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/sniffit.5 ${PREFIX}/man/man5
	${INSTALL_MAN} ${WRKSRC}/sniffit.8 ${PREFIX}/man/man8
.if !defined(NOPORTDOCS)
	${MKDIR} ${PREFIX}/share/doc/sniffit
	${INSTALL_MAN} ${WRKSRC}/README.FIRST ${PREFIX}/share/doc/sniffit
.endif

.include <bsd.port.mk>
