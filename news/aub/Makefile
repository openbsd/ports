# $OpenBSD: Makefile,v 1.25 2019/07/12 20:48:53 sthen Exp $

COMMENT=	assemble usenet binaries

PKGNAME=	aub-2.0.5
REVISION=	0
DISTNAME=	aub
CATEGORIES=	news

PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../scripts/news/nntpstuff/aub/}
DISTFILES=	aub aub.1 BUG_FIXES
DIST_SUBDIR=	aub
EXTRACT_CASES=	*) cp ${FULLDISTDIR}/$$archive . ;;

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*
WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/aub ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/aub.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/aub
	${INSTALL_MAN} ${WRKSRC}/BUG_FIXES ${PREFIX}/share/doc/aub

.include <bsd.port.mk>
