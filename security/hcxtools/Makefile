COMMENT =	convert pcap dumps to hashcat or John the Ripper input

GH_ACCOUNT =	ZerBea
GH_PROJECT =	hcxtools
GH_TAGNAME =	7.0.1
DISTNAME =	hcxtools-${GH_TAGNAME}

CATEGORIES =	security

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += 	c curl z
WANTLIB +=	lib/eopenssl35/crypto lib/eopenssl35/ssl
LIB_DEPENDS +=	net/curl \
		security/openssl/3.5

USE_GMAKE =	Yes
ALL_TARGET =
#
CFLAGS +=       -I${LOCALBASE}/include/eopenssl35
LIBS +=		-Wl,-rpath ${LOCALBASE}/lib/eopenssl35 -L${LOCALBASE}/lib/eopenssl35

MAKE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include ${CFLAGS}"
MAKE_ENV+=	LDFLAGS="-L${LOCALBASE}/lib ${LIBS}"
MAKE_FLAGS =	PREFIX='${LOCALBASE}'

pre-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/bin

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/man/*.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
