# $OpenBSD: Makefile,v 1.2 2013/03/11 11:35:46 espie Exp $

COMMENT=		dns rate limiter for divert(4)

DISTNAME=		dnsfilter-0.4
CATEGORIES=		net

HOMEPAGE=		http://sha256.net/dnsfilter/
MAINTAINER=		Florian Obser <florian+dnsfilter@narrans.de>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ldns util

MASTER_SITES=	${HOMEPAGE}

NO_TEST=	Yes

LIB_DEPENDS=	net/ldns/libldns

MAKE_FLAGS=	BINDIR="${TRUEPREFIX}/sbin" \
		MANDIR="${TRUEPREFIX}/man/man"

do-configure:
	perl -pi -e s,/etc,${SYSCONFDIR}, ${WRKSRC}/dnsfilter.h

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dnsfilter
	${INSTALL_DATA} ${WRKSRC}/dnsfilter.conf ${PREFIX}/share/examples/dnsfilter/dnsfilter.conf

.include <bsd.port.mk>
