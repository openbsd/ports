# $OpenBSD: Makefile,v 1.15 2019/07/12 20:43:57 sthen Exp $

COMMENT=	perl interface to gdbm

PERL_V=		5.22.0
DISTNAME=	perl-${PERL_V}
EXTRACT_SUFX=	.tar.bz2
PKGNAME=	p5-GDBM_File-1.22
CATEGORIES=	databases perl5
REVISION=	0

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../src/}

# perl
PERMIT_PACKAGE=	Yes

WANTLIB +=	c gdbm perl

LIB_DEPENDS=	databases/gdbm

CONFIGURE_STYLE= perl
CONFIGURE_ENV=	LOCALBASE=${LOCALBASE}

# we extract only this extension, since otherwise makemaker will detect we
# have the sources to perl...

EXTRACT_CASES= perl-${PERL_V}.tar.bz2) ${BZIP2} -dc ${FULLDISTDIR}/$$archive | ${TAR} xf - perl-${PERL_V}/ext/GDBM_File/\*;;

WRKDIST=	${WRKDIR}/perl-${PERL_V}/ext/GDBM_File

# reaches around into other dirs
NO_TEST=	Yes

.include <bsd.port.mk>
