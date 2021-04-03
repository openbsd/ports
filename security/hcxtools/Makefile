# $OpenBSD: Makefile,v 1.11 2021/04/03 21:48:56 sebastia Exp $

COMMENT =	convert pcap dumps to hashcat or John the Ripper input

GH_ACCOUNT =	ZerBea
GH_PROJECT =	hcxtools
GH_TAGNAME =	6.1.6
DISTNAME =	hcxtools-${GH_TAGNAME}

CATEGORIES =	security

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto ssl pthread curl z
#WANTLIB += lib/eopenssl11/crypto
#WANTLIB += lib/eopenssl11/ssl
LIB_DEPENDS +=	net/curl
#		security/openssl/1.1

USE_GMAKE =	Yes
ALL_TARGET =

#LDFLAGS += -Wl,-rpath=${LOCALBASE}/lib/eopenssl11 -L${LOCALBASE}/lib/eopenssl11 -L${LOCALBASE}/lib

MAKE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include"
MAKE_ENV+=	LDFLAGS="-L${LOCALBASE}/lib"
#MAKE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include/eopenssl11 -I${LOCALBASE}/include"
#MAKE_ENV+=	LDFLAGS="${LDFLAGS}"
MAKE_FLAGS =	PREFIX='${LOCALBASE}'
FAKE_FLAGS =	MANDIR=${DESTDIR}${PREFIX}/man

pre-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/bin

.include <bsd.port.mk>
