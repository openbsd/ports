# $OpenBSD: Makefile,v 1.17 2002/10/28 01:50:16 naddy Exp $

COMMENT=	"assemble usenet binaries"

PKGNAME=	aub-2.0.5
DISTNAME=	aub
CATEGORIES=	news

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES= \
	ftp://ftp.freesoftware.com/pub/perl/CPAN/scripts/news/nntpstuff/aub/ \
	ftp://ftp.digital.com/pub/plan/perl/CPAN/scripts/news/nntpstuff/aub/ \
	ftp://ftp.perl.org/pub/CPAN/scripts/news/nntpstuff/aub/
DISTFILES=	aub aub.1 BUG_FIXES
DIST_SUBDIR=	aub
EXTRACT_CASES=	*) cp ${FULLDISTDIR}/$$archive . ;;

NO_BUILD=	Yes
NO_REGRESS=	Yes
WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/aub ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/aub.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/aub
	${INSTALL_MAN} ${WRKSRC}/BUG_FIXES ${PREFIX}/share/doc/aub

.include <bsd.port.mk>
