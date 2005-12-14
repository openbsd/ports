# $OpenBSD: Makefile,v 1.3 2005/12/14 06:02:09 jolan Exp $

COMMENT=	"small and secure POP3 daemon"

DISTNAME=	akpop3d-0.7.7
PKGNAME=	${DISTNAME}p0
CATEGORIES=	mail
HOMEPAGE=	http://www.synflood.at/akpop3d/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto ssl

MASTER_SITES=	${HOMEPAGE} \
		http://www.mguillaud.net/ports/akpop3d/
EXTRACT_SUFX=	.tar.bz2

CONFIGURE_STYLE=gnu

NO_REGRESS=	Yes

.include <bsd.port.mk>
