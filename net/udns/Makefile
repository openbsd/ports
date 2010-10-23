# $OpenBSD: Makefile,v 1.1.1.1 2010/10/23 22:55:01 sebastia Exp $

COMMENT=		stub DNS resolver library

VERSION=		0.0.9
DISTNAME=		udns_${VERSION}
PKGNAME=		udns-${VERSION}
CATEGORIES=		net

SHARED_LIBS+=	udns 0.0

MAINTAINER=		Sebastian Reitenbach <sebastia@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=		http://www.corpit.ru/mjt/udns.html
MASTER_SITES=		http://www.corpit.ru/mjt/udns/

WANTLIB += c

.if ${MACHINE_ARCH} != "vax" && ${MACHINE_ARCH} != "m88k"
ALL_TARGET=		sharedlib shared staticlib
MAKE_FLAGS=		SOVER=${LIBudns_VERSION}
.else
ALL_TARGET=		staticlib static
.endif

CONFIGURE_STYLE=	simple
WRKDIST=		${WRKDIR}/udns-${VERSION}
NO_REGRESS=		Yes

do-install:
	${INSTALL_DATA} ${WRKSRC}/udns.h ${PREFIX}/include
	${INSTALL_MAN} ${WRKSRC}/udns.3 ${PREFIX}/man/man3
	${INSTALL_MAN} ${WRKSRC}/dnsget.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/rblcheck.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/libudns.a ${PREFIX}/lib
.if ${MACHINE_ARCH} != "vax" && ${MACHINE_ARCH} != "m88k"
	${INSTALL_PROGRAM} ${WRKSRC}/dnsget_s ${PREFIX}/bin/dnsget
	${INSTALL_PROGRAM} ${WRKSRC}/rblcheck_s ${PREFIX}/bin/rblcheck
	${INSTALL_DATA} ${WRKSRC}/libudns.so.${LIBudns_VERSION} ${PREFIX}/lib
.else
	${INSTALL_PROGRAM} ${WRKSRC}/dnsget ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/rblcheck ${PREFIX}/bin
.endif 

.include <bsd.port.mk>
