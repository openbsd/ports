# $OpenBSD: Makefile,v 1.7 2000/03/23 00:47:40 turan Exp $
# $FreeBSD: Makefile,v 1.1.1.1 1998/04/04 04:58:25 obrien Exp $

DISTNAME=	sniffit.0.3.5
PKGNAME=	sniffit-0.3.5
CATEGORIES=	net security
MASTER_SITES=	http://reptile.rug.ac.be/~coder/sniffit/files/ \
		ftp://ftphost.manawatu.gen.nz/pub/unix/net/security/sniffers/sniffit/ \
		ftp://ftp.netbsd.org/pub/NetBSD/packages/distfiles/

.if ${MACHINE_ARCH} == "alpha"
BROKEN=		"Currently does not build on Alpha"
.endif

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	"no obvious license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no obvious license"
PERMIT_DISTFILES_FTP=	Yes

GNU_CONFIGURE=	yes
ALL_TARGET=

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/sniffit ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/sniffit.5 ${PREFIX}/man/man5
	${INSTALL_MAN} ${WRKSRC}/sniffit.8 ${PREFIX}/man/man8
	mkdir -p ${PREFIX}/share/doc/sniffit
	${INSTALL_MAN} ${WRKSRC}/README.FIRST ${PREFIX}/share/doc/sniffit

.include <bsd.port.mk>
