COMMENT=	DNS performance testing tools

# newer versions needs libck ("Concurrency Kit") not yet in ports
DISTNAME=	dnsperf-2.4.2
REVISION=	3

CATEGORIES=	net benchmarks

HOMEPAGE=	https://www.dns-oarc.net/tools/dnsperf/
PORTROACH=	site:https://github.com/DNS-OARC/dnsperf/releases/

# Apache 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto ldns m ssl pthread

SITES=		https://www.dns-oarc.net/files/dnsperf/

MODULES=	lang/python
MODPY_ADJ_FILES= contrib/queryparse/queryparse
MODPY_BUILDDEP=	No

LIB_DEPENDS=	net/ldns,-main

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS=-I${LOCALBASE}/include \
		LDFLAGS=-L${LOCALBASE}/lib

RUN_DEPENDS=	net/py-dnspython \
		net/py-pcapy

post-install:
	cd ${WRKSRC}/contrib/queryparse; \
	  ${INSTALL_SCRIPT} queryparse ${PREFIX}/bin; \
	  ${INSTALL_DATA} queryparse.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
