# $OpenBSD: Makefile,v 1.4 2019/09/26 06:46:39 sebastia Exp $

COMMENT =	convert pcap dumps to hashcat or John the Ripper input

GH_ACCOUNT =	ZerBea
GH_PROJECT =	hcxtools
GH_TAGNAME =	5.2.2
DISTNAME =	hcxtools-${GH_TAGNAME}

CATEGORIES =	security

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread crypto curl z
LIB_DEPENDS +=	net/curl

USE_GMAKE =	Yes
ALL_TARGET =

MAKE_ENV+=	CPPFLAGS=-I${LOCALBASE}/include
MAKE_ENV+=	LDFLAGS=-L${LOCALBASE}/lib
MAKE_FLAGS =	PREFIX='${LOCALBASE}'

pre-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/bin

.include <bsd.port.mk>
