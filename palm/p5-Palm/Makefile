# $OpenBSD: Makefile,v 1.2 2002/08/05 01:19:21 pvalchev Exp $

COMMENT=	"interface to palm pdb databases"

DISTNAME=	p5-Palm-1.2.4
CATEGORIES=	palm databases perl5
HOMEPAGE=	http://www.coldsync.org/

MAINTAINER=	Sebastian Stark <seb@todesplanet.de>

# refers to the artistic license perl uses, but doesn't include it
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}download/ \
		${MASTER_SITE_PERL_CPAN:=../by-authors/id/A/AR/ARENSB/}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
