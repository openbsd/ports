# $OpenBSD: Makefile,v 1.15 2000/02/14 09:02:29 turan Exp $

DISTNAME=	pine4.21
PKGNAME=	pine-4.21
CATEGORIES=	mail news
MASTER_SITES=	ftp://ftp.cac.washington.edu/pine/ \
		ftp://ftp.sunet.se/pub/unix/mail/pine/

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		NOFEE
PERMIT_PKG_CDROM=	NO
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	NO
PERMIT_DISTF_FTP=	YES

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pine
	${INSTALL_DATA} ${WRKSRC}/doc/tech-notes.txt ${PREFIX}/share/doc/pine
	${INSTALL_DATA} ${FILESDIR}/dot.pinerc.pgp.sample ${PREFIX}/share/doc/pine
	cd ${WRKSRC}/bin; ${INSTALL_PROGRAM} pico pilot pine ${PREFIX}/bin
	cd ${FILESDIR}; ${INSTALL_SCRIPT} pgpencrypt pgpdecode pgpsign ${PREFIX}/bin
	cd ${WRKSRC}/doc; ${INSTALL_MAN} pico.1 pilot.1 pine.1 ${PREFIX}/man/man1

post-install:
	@PKG_PREFIX="${PREFIX}" ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
