# $OpenBSD: Makefile,v 1.11 2018/11/12 08:53:45 bentley Exp $

COMMENT=	Multiplexes MPEG component streams into system layers

DISTNAME=	mplex-1.1
CATEGORIES=	graphics
REVISION=	0

# GNU
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m

MASTER_SITES=	http://mirror.csoft.org/mplex/

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mplex ${PREFIX}/bin

.include <bsd.port.mk>
