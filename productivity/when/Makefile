# $OpenBSD: Makefile,v 1.7 2012/05/06 18:22:43 jasper Exp $

COMMENT=		simple but effective personal calendar

DISTNAME=		when-1.1.29
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

WRKDIST=		${WRKDIR}/when_dist/

 # Requires interactive terminal and other hoops not worth going through.
NO_REGRESS=		Yes

do-configure:
	@perl -pi -e 's,/usr/bin,${PREFIX}/bin,' ${WRKSRC}/when.1

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/when ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/when.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
