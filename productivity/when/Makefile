# $OpenBSD: Makefile,v 1.14 2019/07/12 20:49:00 sthen Exp $

COMMENT=		simple but effective personal calendar

DISTNAME=		when-1.1.36
CATEGORIES=		productivity

HOMEPAGE=		http://www.lightandmatter.com/when/when.html

# perl
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://distfiles.nl/

NO_BUILD=		Yes
PKG_ARCH=		*

WRKDIST=		${WRKDIR}/when_dist

 # Requires interactive terminal and other hoops not worth going through.
NO_TEST=		Yes

do-configure:
	@sed -i 's,/usr/bin,${PREFIX}/bin,' ${WRKSRC}/when.1

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/when ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/when.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
