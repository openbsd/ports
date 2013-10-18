# $OpenBSD: Makefile,v 1.6 2013/10/18 15:44:52 miod Exp $

COMMENT=		stub DNS resolver library

DISTNAME=		udns-0.2
CATEGORIES=		net

SHARED_LIBS+=	udns 1.0

MAINTAINER=		Sebastian Reitenbach <sebastia@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

HOMEPAGE=		http://www.corpit.ru/mjt/udns.html
MASTER_SITES=		http://www.corpit.ru/mjt/udns/ \
			http://distfiles.nl/

WANTLIB += c

.if ${MACHINE_ARCH} != "vax"
ALL_TARGET=		sharedlib shared staticlib
MAKE_FLAGS=		SOVER=${LIBudns_VERSION}
.else
ALL_TARGET=		staticlib static
.endif

CONFIGURE_STYLE=	simple
NO_TEST=		Yes

do-install:
	${INSTALL_DATA} ${WRKSRC}/udns.h ${PREFIX}/include
	${INSTALL_MAN} ${WRKSRC}/udns.3 ${PREFIX}/man/man3
	${INSTALL_MAN} ${WRKSRC}/dnsget.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/rblcheck.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/libudns.a ${PREFIX}/lib
.if ${MACHINE_ARCH} != "vax"
	${INSTALL_PROGRAM} ${WRKSRC}/dnsget_s ${PREFIX}/bin/dnsget
	${INSTALL_PROGRAM} ${WRKSRC}/rblcheck_s ${PREFIX}/bin/rblcheck
	${INSTALL_DATA} ${WRKSRC}/libudns.so.${LIBudns_VERSION} ${PREFIX}/lib
.else
	${INSTALL_PROGRAM} ${WRKSRC}/dnsget ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/rblcheck ${PREFIX}/bin
.endif 

.include <bsd.port.mk>
