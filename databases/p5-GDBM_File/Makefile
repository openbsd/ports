# $OpenBSD: Makefile,v 1.7 2010/11/15 00:22:52 espie Exp $

SHARED_ONLY=	Yes
COMMENT=	perl interface to gdbm

DISTNAME=	perl-5.8.8
EXTRACT_SUFX=	.tar.bz2
PKGNAME=	p5-GDBM_File-1.08
REVISION=	1
CATEGORIES=	databases perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../src/}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	databases/gdbm
WANTLIB +=	gdbm

CONFIGURE_STYLE= perl
CONFIGURE_ENV=LOCALBASE=${LOCALBASE}
USE_GROFF =	Yes

# we extract only this extension, since otherwise makemaker will detect we
# have the sources to perl...

EXTRACT_CASES= perl-5.8.8.tar.bz2) ${BZIP2} -dc ${FULLDISTDIR}/$$archive | ${TAR} xf - perl-5.8.8/ext/GDBM_File/\*;;

WRKDIST=	${WRKDIR}/perl-5.8.8/ext/GDBM_File

.include <bsd.port.mk>
