# $OpenBSD: Makefile,v 1.5 2002/10/27 00:03:16 naddy Exp $
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

MASTER_SITES=	ftp://ftp.leo.org/pub/comp/general/graphics/mpeg/mplex/ \
		http://mirror.csoft.org/mplex/

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mplex ${PREFIX}/bin

.include <bsd.port.mk>
