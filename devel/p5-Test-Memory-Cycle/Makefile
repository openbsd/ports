# $OpenBSD: Makefile,v 1.5 2006/04/02 13:07:27 steven Exp $

COMMENT= 	"Perl extension for emulating troublesome interfaces"

DISTNAME=	Test-Memory-Cycle-1.02
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	devel perl5

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Test/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Devel-Cycle

REGRESS_DEPENDS=	::devel/p5-Test-Pod \
			::devel/p5-Test-Pod-Coverage

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
