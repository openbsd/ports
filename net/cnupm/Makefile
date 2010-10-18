# $OpenBSD: Makefile,v 1.14 2010/10/18 18:36:46 espie Exp $

COMMENT=		IPv4/IPv6 traffic collector

DISTNAME=		cnupm-3.11
REVISION=		1
CATEGORIES=		net

HOMEPAGE=		http://pdp-11.org.ru/~form/cnupm

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/files/

MAKE_ENV=		BINDIR=${TRUEPREFIX}/sbin MANDIR=${TRUEPREFIX}/man/cat
CFLAGS+=		-DCNUPM_USER=\"_cnupm\"
USE_GROFF =	Yes

FLAVORS=		static
FLAVOR?=

.if ${FLAVOR:Mstatic}
LDSTATIC=		-static
MAKE_ENV+=		LDSTATIC=${LDSTATIC}
.else
WANTLIB=		c pcap
.endif

post-extract:
	@rm ${WRKSRC}/include/sys/tree.h

.include <bsd.port.mk>
