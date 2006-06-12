# $OpenBSD: Makefile,v 1.1.1.1 2006/06/12 13:55:08 alek Exp $

COMMENT=	"draws a graph of CPU usage of a certain process"

DISTNAME=	pscpug031
PKGNAME=	pscpug-0.3.1
CATEGORIES=	sysutils

HOMEPAGE=	http://www.diablonet.net/~mercadal/projects/pscpug/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c curses kvm m

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

CONFIGURE_STYLE=gnu

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pscpug ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/pscpug.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
