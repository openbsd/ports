# $OpenBSD: Makefile,v 1.22 2000/10/05 18:01:49 marc Exp $

BROKEN=		"remote access exploit"
VERSION=	4.21
DISTNAME=	pine${VERSION}
NEED_VERSION=	1.320
MASTER_SITES=	ftp://ftp.cac.washington.edu/pine/ \
		ftp://ftp.sunet.se/pub/unix/mail/pine/

HOMEPAGE=	http://www.washington.edu/pine/

MAINTAINER=	Marco S Hyman <marc@openbsd.org>

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=	-pine -pico
SUBPACKAGE?=

.if ${SUBPACKAGE} == "-pine"
PKGNAME=	pine-${VERSION}
CATEGORIES=	mail news
LIB_DEPENDS=	c-client.1::mail/c-client
.elif ${SUBPACKAGE} == "-pico"
PKGNAME=	pico-${VERSION}
CATEGORIES=	editors
.else
PKGNAME=	pine+pico-${VERSION}
CATEGORIES=	mail news editors
LIB_DEPENDS=	c-client.1::mail/c-client
.endif

do-configure:
	@cp -f ${FILESDIR}/Makefile ${WRKSRC}/Makefile

do-install:
.if ${SUBPACKAGE} == "-pico" || ${SUBPACKAGE} == ""
	cd ${WRKSRC}/bin && ${INSTALL_PROGRAM} pico ${PREFIX}/bin
	cd ${WRKSRC}/doc && ${INSTALL_MAN} pico.1 ${PREFIX}/man/man1
.endif
.if ${SUBPACKAGE} == "-pine" || ${SUBPACKAGE} == ""
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pine
	${INSTALL_DATA} ${WRKSRC}/doc/tech-notes.txt ${PREFIX}/share/doc/pine
	${INSTALL_DATA} ${FILESDIR}/dot.pinerc.pgp.sample ${PREFIX}/share/doc/pine
	cd ${WRKSRC}/bin && ${INSTALL_PROGRAM} pilot pine ${PREFIX}/bin
	cd ${FILESDIR} && ${INSTALL_SCRIPT} pgpencrypt pgpdecode pgpsign ${PREFIX}/bin
	cd ${WRKSRC}/doc; ${INSTALL_MAN} pilot.1 pine.1 ${PREFIX}/man/man1
.endif

.include <bsd.port.mk>
