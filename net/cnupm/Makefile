# $OpenBSD: Makefile,v 1.24 2019/07/12 20:48:24 sthen Exp $

COMMENT=		IPv4/IPv6 traffic collector

DISTNAME=		cnupm-3.12
CATEGORIES=		net
REVISION=		2

HOMEPAGE=		http://pdp-11.org.ru/~form/cnupm

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${HOMEPAGE}/files/

MAKE_ENV=		BINDIR=${TRUEPREFIX}/sbin MANDIR=${TRUEPREFIX}/man/man
CFLAGS+=		-DCNUPM_USER=\"_cnupm\"

FLAVORS=		static
FLAVOR?=

.if ${FLAVOR:Mstatic}
LDSTATIC=		${STATIC}
MAKE_ENV+=		LDSTATIC="${LDSTATIC}"
.else
WANTLIB=		c pcap
.endif

NO_TEST=		Yes

post-extract:
	@rm ${WRKSRC}/include/sys/tree.h

.include <bsd.port.mk>
