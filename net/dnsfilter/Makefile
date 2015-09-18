# $OpenBSD: Makefile,v 1.4 2015/09/18 19:35:05 jasper Exp $

COMMENT=		dns rate limiter for divert(4)

REVISION=		0

DISTNAME=		dnsfilter-0.4
CATEGORIES=		net

HOMEPAGE=		http://sha256.net/dnsfilter/
MAINTAINER=		Florian Obser <florian+ports@narrans.de>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ldns util

MASTER_SITES=	${HOMEPAGE}

NO_TEST=	Yes

LIB_DEPENDS=	net/ldns/libldns

MAKE_FLAGS=	BINDIR="${TRUEPREFIX}/sbin" \
		MANDIR="${TRUEPREFIX}/man/man"

do-configure:
	sed -i s,/etc,${SYSCONFDIR}, ${WRKSRC}/dnsfilter.h

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dnsfilter
	${INSTALL_DATA} ${WRKSRC}/dnsfilter.conf ${PREFIX}/share/examples/dnsfilter/dnsfilter.conf

.include <bsd.port.mk>
