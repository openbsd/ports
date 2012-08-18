# $OpenBSD: Makefile,v 1.9 2012/08/18 12:41:38 ajacoutot Exp $

COMMENT=	Multiplexes MPEG component streams into system layers

DISTNAME=	mplex-1.1
CATEGORIES=	graphics

MAINTAINER=	Wilbern Cobb <wcobb@openbsd.org>

# GNU
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

MASTER_SITES=	http://mirror.csoft.org/mplex/

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mplex ${PREFIX}/bin

.include <bsd.port.mk>
