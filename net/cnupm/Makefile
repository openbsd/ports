# $OpenBSD: Makefile,v 1.19 2015/03/14 20:52:46 naddy Exp $

COMMENT=		IPv4/IPv6 traffic collector

DISTNAME=		cnupm-3.11
REVISION=		4
CATEGORIES=		net

HOMEPAGE=		http://pdp-11.org.ru/~form/cnupm

# BSD
PERMIT_PACKAGE_CDROM=	Yes

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

post-extract:
	@rm ${WRKSRC}/include/sys/tree.h

.include <bsd.port.mk>
