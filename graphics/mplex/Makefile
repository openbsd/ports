# $OpenBSD: Makefile,v 1.10 2013/03/11 11:10:54 espie Exp $

COMMENT=	Multiplexes MPEG component streams into system layers

DISTNAME=	mplex-1.1
CATEGORIES=	graphics

MAINTAINER=	Wilbern Cobb <wcobb@openbsd.org>

# GNU
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m

MASTER_SITES=	http://mirror.csoft.org/mplex/

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mplex ${PREFIX}/bin

.include <bsd.port.mk>
