COMMENT =	convert pcap dumps to hashcat or John the Ripper input

GH_ACCOUNT =	ZerBea
GH_PROJECT =	hcxtools
GH_TAGNAME =	6.3.5
DISTNAME =	hcxtools-${GH_TAGNAME}
REVISION =	0

CATEGORIES =	security

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += 	c curl z
WANTLIB +=	lib/eopenssl33/crypto lib/eopenssl33/ssl
LIB_DEPENDS +=	net/curl \
		security/openssl/3.3

USE_GMAKE =	Yes
ALL_TARGET =

CFLAGS +=       -I${LOCALBASE}/include/eopenssl33
LIBS +=		-Wl,-rpath ${LOCALBASE}/lib/eopenssl33 -L${LOCALBASE}/lib/eopenssl33

MAKE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include ${CFLAGS}"
MAKE_ENV+=	LDFLAGS="-L${LOCALBASE}/lib ${LIBS}"
MAKE_FLAGS =	PREFIX='${LOCALBASE}'

pre-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/bin

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/man/*.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
