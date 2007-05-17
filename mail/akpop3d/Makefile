# $OpenBSD: Makefile,v 1.5 2007/05/17 20:34:07 steven Exp $

COMMENT=	"small and secure POP3 daemon"

DISTNAME=	akpop3d-0.7.7
PKGNAME=	${DISTNAME}p1
CATEGORIES=	mail
HOMEPAGE=	http://www.synflood.at/akpop3d.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto ssl

MASTER_SITES=	http://www.synflood.at/akpop3d/ \
		http://www.mguillaud.net/ports/akpop3d/
EXTRACT_SUFX=	.tar.bz2

CONFIGURE_STYLE=gnu

NO_REGRESS=	Yes

.include <bsd.port.mk>
