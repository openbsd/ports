# $OpenBSD: Makefile,v 1.4 2010/09/12 16:49:09 jasper Exp $

COMMENT=		simple but effective personal calendar

DISTNAME=		when-1.1.21
CATEGORIES=		productivity

HOMEPAGE=		http://www.lightandmatter.com/when/when.html

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://distfiles.nl/

NO_BUILD=		Yes
PKG_ARCH=		*

 # Requires interactive terminal and other hoops not worth going through.
NO_REGRESS=		Yes

do-configure:
	@perl -pi -e 's,/usr/bin,${PREFIX}/bin,' ${WRKSRC}/when.1

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/when ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/when.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
