# $OpenBSD: Makefile,v 1.3 2002/03/21 20:57:08 espie Exp $
# $FreeBSD: ports/graphics/mplex/Makefile,v 1.8 2000/05/29 23:54:39 steve Exp $
#

COMMENT=	"Multiplexes MPEG component streams into system layers"

DISTNAME=	mplex-1.1
CATEGORIES=	graphics
NEED_VERSION=   1.515

# GNU
PERMIT_PACKAGE_CDROM=	     Yes
PERMIT_PACKAGE_FTP=	     Yes
PERMIT_DISTFILES_CDROM=	     Yes
PERMIT_DISTFILES_FTP=	     Yes

MASTER_SITES=	ftp://ftp.leo.org/pub/comp/general/graphics/mpeg/mplex/

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mplex ${PREFIX}/bin

.include <bsd.port.mk>
