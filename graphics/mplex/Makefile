# $OpenBSD: Makefile,v 1.6 2004/11/30 01:06:38 espie Exp $
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

MASTER_SITES=	ftp://ftp.leo.org/pub/comp/general/graphics/mpeg/mplex/ \
		http://mirror.csoft.org/mplex/

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mplex ${PREFIX}/bin

.include <bsd.port.mk>
