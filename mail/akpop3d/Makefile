# $OpenBSD: Makefile,v 1.2 2005/01/02 10:53:41 alek Exp $

COMMENT=	"small and secure POP3 daemon"

DISTNAME=	akpop3d-0.7.7
CATEGORIES=	mail
HOMEPAGE=	http://www.synflood.at/akpop3d/

MAINTAINER=	Maxime Guillaud <bsd-ports@mguillaud.net>

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
