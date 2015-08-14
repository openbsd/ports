# $OpenBSD: Makefile,v 1.21 2015/08/14 13:06:52 zhuk Exp $

COMMENT=		IPv4/IPv6 traffic collector

DISTNAME=		cnupm-3.12
CATEGORIES=		net
REVISION=		0

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

NO_TEST=		Yes

post-extract:
	@rm ${WRKSRC}/include/sys/tree.h

.include <bsd.port.mk>
