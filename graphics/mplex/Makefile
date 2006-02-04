# $OpenBSD: Makefile,v 1.7 2006/02/04 19:17:41 steven Exp $
# $FreeBSD: ports/graphics/mplex/Makefile,v 1.8 2000/05/29 23:54:39 steve Exp $
#

COMMENT=	"Multiplexes MPEG component streams into system layers"

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
