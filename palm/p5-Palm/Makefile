# $OpenBSD: Makefile,v 1.4 2003/09/23 15:29:41 sturm Exp $

COMMENT=	"interface to palm pdb databases"

DISTNAME=	p5-Palm-1.3.0
CATEGORIES=	palm databases perl5
HOMEPAGE=	http://www.coldsync.org/

# refers to the artistic license perl uses, but doesn't include it
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}download/ \
		${MASTER_SITE_PERL_CPAN:=../by-authors/id/A/AR/ARENSB/}

CONFIGURE_STYLE= perl
WRKDIST=	${WRKDIR}/p5-Palm-1.003_000

.include <bsd.port.mk>
