# $OpenBSD: Makefile,v 1.22 2010/10/18 21:25:08 espie Exp $

COMMENT=	assemble usenet binaries

PKGNAME=	aub-2.0.5
DISTNAME=	aub
CATEGORIES=	news

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../scripts/news/nntpstuff/aub/}
DISTFILES=	aub aub.1 BUG_FIXES
DIST_SUBDIR=	aub
EXTRACT_CASES=	*) cp ${FULLDISTDIR}/$$archive . ;;

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*
WRKDIST=	${WRKDIR}
USE_GROFF =	Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/aub ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/aub.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/aub
	${INSTALL_MAN} ${WRKSRC}/BUG_FIXES ${PREFIX}/share/doc/aub

.include <bsd.port.mk>
