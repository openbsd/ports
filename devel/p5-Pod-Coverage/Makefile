# $OpenBSD: Makefile,v 1.2 2004/12/21 02:04:59 msf Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT= 	"checks if the documentation of a Perl module is comprehensive"

DISTNAME=	Pod-Coverage-0.17
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Pod/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Devel-Symdump

CONFIGURE_STYLE= perl modbuild

.include <bsd.port.mk>
