# $OpenBSD: Makefile,v 1.1.1.1 2004/05/29 21:10:02 avsm Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"perl module to lint Test::Builder testsuites"

DISTNAME=	Test-Builder-Tester-0.09
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Test/}

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# same as perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
