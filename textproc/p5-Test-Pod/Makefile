# $OpenBSD: Makefile,v 1.1.1.1 2004/05/29 21:12:57 avsm Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"perl module to test the validity of a POD file"

DISTNAME=	Test-Pod-1.16
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Test/}

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# same as perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	::devel/p5-Test-Builder-Tester
RUN_DEPENDS=	::devel/p5-Test-Builder-Tester

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
