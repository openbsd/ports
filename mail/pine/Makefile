# $OpenBSD: Makefile,v 1.17 2000/03/22 16:15:12 espie Exp $

DISTNAME=	pine4.21
PKGNAME=	pine-4.21
CATEGORIES=	mail news
NEED_VERSION=	1.223
MASTER_SITES=	ftp://ftp.cac.washington.edu/pine/ \
		ftp://ftp.sunet.se/pub/unix/mail/pine/

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		NOFEE
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes
FAKE=			Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pine
	${INSTALL_DATA} ${WRKSRC}/doc/tech-notes.txt ${PREFIX}/share/doc/pine
	${INSTALL_DATA} ${FILESDIR}/dot.pinerc.pgp.sample ${PREFIX}/share/doc/pine
	cd ${WRKSRC}/bin; ${INSTALL_PROGRAM} pico pilot pine ${PREFIX}/bin
	cd ${FILESDIR}; ${INSTALL_SCRIPT} pgpencrypt pgpdecode pgpsign ${PREFIX}/bin
	cd ${WRKSRC}/doc; ${INSTALL_MAN} pico.1 pilot.1 pine.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
