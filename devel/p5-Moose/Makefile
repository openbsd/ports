# $OpenBSD: Makefile,v 1.6 2009/02/10 10:31:32 simon Exp $

COMMENT=	complete modern object system for perl 5

MODULES=	cpan
DISTNAME=	Moose-0.68
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CPAN_AUTHOR=	DROLSKY

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:p5-Class-MOP->=0.76:devel/p5-Class-MOP \
		::devel/p5-List-MoreUtils \
		::devel/p5-Sub-Exporter

REGRESS_DEPENDS=:p5-Test-Warn->=0.10:devel/p5-Test-Warn \
		::devel/p5-Test-LongString \
		::devel/p5-Test-Exception \
		::devel/p5-Test-Output \
		::textproc/p5-Regexp-Common \
		::devel/p5-Locale-US \
		::www/p5-libwww \
		::www/p5-URI

.include <bsd.port.mk>
