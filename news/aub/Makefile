# $OpenBSD: Makefile,v 1.14 2001/02/09 17:55:32 angelos Exp $

DISTNAME=	aub
PKGNAME=	aub-2.0.5
CATEGORIES=	news
NEED_VERSION=	1.191
MASTER_SITES=	ftp://ftp.freesoftware.com/pub/perl/CPAN/scripts/news/nntpstuff/aub/ \
		ftp://ftp.digital.com/pub/plan/perl/CPAN/scripts/news/nntpstuff/aub/ \
		ftp://ftp.perl.org/pub/CPAN/scripts/news/nntpstuff/aub/
DISTFILES=	aub aub.1 BUG_FIXES
DIST_SUBDIR=	aub

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	Yes

WRKDIST=	${WRKDIR}

do-extract:
	@mkdir -p ${WRKDIR}

pre-configure:
	@sed -e '1,1s:/usr/local/bin/perl:!/usr/bin/perl:' \
		-e 's:$SUM = "/bin/sum":$SUM = "/usr/bin/sum":' \
		-e 's:/usr/tmp:/var/tmp:' \
		${FULLDISTDIR}/aub > ${WRKDIR}/aub

do-install:
	cd ${WRKDIR}; patch < ${FILESDIR}/aub-perl5.diff
	${INSTALL_SCRIPT} ${WRKDIR}/aub ${PREFIX}/bin
	${INSTALL_MAN} ${FULLDISTDIR}/aub.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/aub
	${INSTALL_MAN} ${FULLDISTDIR}/BUG_FIXES ${PREFIX}/share/doc/aub

#
# There is a patch to aub to run with perl5.
# You may find it in the files/ dir.
#

.include <bsd.port.mk>
