COMMENT =	convert pcap dumps to hashcat or John the Ripper input

GH_ACCOUNT =	ZerBea
GH_PROJECT =	hcxtools
GH_TAGNAME =	6.3.2
DISTNAME =	hcxtools-${GH_TAGNAME}

CATEGORIES =	security

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += 	c curl z
WANTLIB +=	lib/eopenssl31/crypto lib/eopenssl31/ssl
LIB_DEPENDS +=	net/curl \
		security/openssl/3.1

USE_GMAKE =	Yes
ALL_TARGET =

CFLAGS +=       -Wno-deprecated-declarations -I${LOCALBASE}/include/eopenssl31
LIBS +=		-Wl,-rpath ${LOCALBASE}/lib/eopenssl31 -L${LOCALBASE}/lib/eopenssl31

MAKE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include ${CFLAGS}"
MAKE_ENV+=	LDFLAGS="-L${LOCALBASE}/lib ${LIBS}"
MAKE_FLAGS =	PREFIX='${LOCALBASE}'

pre-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/bin

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/man/*.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
