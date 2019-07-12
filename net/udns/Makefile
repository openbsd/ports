# $OpenBSD: Makefile,v 1.13 2019/07/12 20:48:51 sthen Exp $

COMMENT=		stub DNS resolver library

DISTNAME=		udns-0.4
CATEGORIES=		net
REVISION=		0

SHARED_LIBS+=	udns 1.0

MAINTAINER=		Sebastian Reitenbach <sebastia@openbsd.org>

# LGPL
PERMIT_PACKAGE=	Yes

HOMEPAGE=		http://www.corpit.ru/mjt/udns.html
MASTER_SITES=		http://www.corpit.ru/mjt/udns/ \
			https://distfiles.nl/

WANTLIB += c

ALL_TARGET=		sharedlib shared staticlib
MAKE_FLAGS=		SOVER=${LIBudns_VERSION}

CONFIGURE_STYLE=	simple
NO_TEST=		Yes

do-install:
	${INSTALL_DATA} ${WRKSRC}/udns.h ${PREFIX}/include
	${INSTALL_MAN} ${WRKSRC}/udns.3 ${PREFIX}/man/man3
	${INSTALL_MAN} ${WRKSRC}/dnsget.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/rblcheck.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/libudns.a ${PREFIX}/lib
	${INSTALL_PROGRAM} ${WRKSRC}/dnsget_s ${PREFIX}/bin/dnsget
	${INSTALL_PROGRAM} ${WRKSRC}/rblcheck_s ${PREFIX}/bin/rblcheck
	${INSTALL_DATA} ${WRKSRC}/libudns.so.${LIBudns_VERSION} ${PREFIX}/lib

.include <bsd.port.mk>
