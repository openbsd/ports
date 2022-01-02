# $OpenBSD: Makefile,v 1.14 2022/01/02 18:27:25 sebastia Exp $

COMMENT =	convert pcap dumps to hashcat or John the Ripper input

GH_ACCOUNT =	ZerBea
GH_PROJECT =	hcxtools
GH_TAGNAME =	6.2.5
DISTNAME =	hcxtools-${GH_TAGNAME}

CATEGORIES =	security

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto ssl pthread curl z
LIB_DEPENDS +=	net/curl

USE_GMAKE =	Yes
ALL_TARGET =

MAKE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include"
MAKE_ENV+=	LDFLAGS="-L${LOCALBASE}/lib"
MAKE_FLAGS =	PREFIX='${LOCALBASE}'

pre-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/bin

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/man/*.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
