# $OpenBSD: Makefile,v 1.19 2000/09/03 17:20:33 espie Exp $

MULTI_PACKAGES=-pine -pico
SUBPACKAGE?=

VERSION=4.21
DISTNAME=	pine${VERSION}
MASTER_SITES=	ftp://ftp.cac.washington.edu/pine/ \
		ftp://ftp.sunet.se/pub/unix/mail/pine/

.if ${SUBPACKAGE} == "-pine"
PKGNAME=	pine-${VERSION}
CATEGORIES=	mail news
.elif ${SUBPACKAGE} == "-pico"
PKGNAME=	pico-${VERSION}
CATEGORIES=	editors
.else
PKGNAME=	pine+pico-${VERSION}
CATEGORIES=	mail news editors
.endif
NEED_VERSION=	1.310

HOMEPAGE=	http://www.washington.edu/pine/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

do-configure:
	@cp -f ${FILESDIR}/Makefile ${WRKSRC}/Makefile

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pine
	${INSTALL_DATA} ${WRKSRC}/doc/tech-notes.txt ${PREFIX}/share/doc/pine
	${INSTALL_DATA} ${FILESDIR}/dot.pinerc.pgp.sample ${PREFIX}/share/doc/pine
	cd ${WRKSRC}/bin; ${INSTALL_PROGRAM} pico pilot pine ${PREFIX}/bin
	cd ${FILESDIR}; ${INSTALL_SCRIPT} pgpencrypt pgpdecode pgpsign ${PREFIX}/bin
	cd ${WRKSRC}/doc; ${INSTALL_MAN} pico.1 pilot.1 pine.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
