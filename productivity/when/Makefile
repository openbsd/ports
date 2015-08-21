# $OpenBSD: Makefile,v 1.10 2015/08/21 14:42:50 jasper Exp $

COMMENT=		simple but effective personal calendar

DISTNAME=		when-1.1.31
CATEGORIES=		productivity

HOMEPAGE=		http://www.lightandmatter.com/when/when.html

# perl
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://distfiles.nl/

NO_BUILD=		Yes
PKG_ARCH=		*

WRKDIST=		${WRKDIR}/when_dist/

 # Requires interactive terminal and other hoops not worth going through.
NO_TEST=		Yes

do-configure:
	@sed -i 's,/usr/bin,${PREFIX}/bin,' ${WRKSRC}/when.1

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/when ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/when.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
