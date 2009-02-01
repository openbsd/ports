# $OpenBSD: Makefile,v 1.5 2009/02/01 00:58:52 simon Exp $

COMMENT=	complete modern object system for perl 5

MODULES=	cpan
DISTNAME=	Moose-0.64
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CPAN_AUTHOR=	DROLSKY

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:p5-Class-MOP->=0.75:devel/p5-Class-MOP \
		::devel/p5-List-MoreUtils \
		::devel/p5-Sub-Exporter

REGRESS_DEPENDS=::devel/p5-Test-Exception \
		::devel/p5-Test-LongString

.include <bsd.port.mk>
