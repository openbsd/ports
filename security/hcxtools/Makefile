# $OpenBSD: Makefile,v 1.9 2020/11/09 23:27:03 sebastia Exp $

COMMENT =	convert pcap dumps to hashcat or John the Ripper input

GH_ACCOUNT =	ZerBea
GH_PROJECT =	hcxtools
GH_TAGNAME =	6.1.3
DISTNAME =	hcxtools-${GH_TAGNAME}

CATEGORIES =	security

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread crypto ssl curl z
LIB_DEPENDS +=	net/curl

USE_GMAKE =	Yes
ALL_TARGET =

MAKE_ENV+=	CPPFLAGS=-I${LOCALBASE}/include
MAKE_ENV+=	LDFLAGS=-L${LOCALBASE}/lib
MAKE_FLAGS =	PREFIX='${LOCALBASE}'
FAKE_FLAGS =	MANDIR=${DESTDIR}${PREFIX}/man

pre-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/bin

.include <bsd.port.mk>
