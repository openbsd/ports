# $OpenBSD: Makefile,v 1.4 2004/11/07 11:13:12 grange Exp $

COMMENT=		"IPv4/IPv6 traffic collector"

DISTNAME=		cnupm-3.6
CATEGORIES=		net

HOMEPAGE=		http://pdp-11.org.ru/~form/cnupm
MAINTAINER=		Alexander Yurchenko <grange@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/files/

MAKE_ENV=		BINDIR=${TRUEPREFIX}/sbin MANDIR=${TRUEPREFIX}/man/cat
CFLAGS+=		-DCNUPM_USER=\"_cnupm\" -finline-limit-1000

FLAVORS=		static
FLAVOR?=

.if ${FLAVOR:Mstatic}
LDSTATIC=		-static
MAKE_ENV+=		LDSTATIC=${LDSTATIC}
.endif

post-extract:
	@rm ${WRKSRC}/include/sys/tree.h

.include <bsd.port.mk>
