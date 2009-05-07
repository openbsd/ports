# $OpenBSD: Makefile,v 1.7 2009/05/07 08:15:20 simon Exp $

COMMENT=	complete modern object system for perl 5

MODULES=	cpan
DISTNAME=	Moose-0.76
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CPAN_AUTHOR=	DROLSKY

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:p5-Class-MOP->=0.83:devel/p5-Class-MOP \
		::devel/p5-List-MoreUtils \
		::devel/p5-Sub-Exporter \
		::devel/p5-Task-Weaken \
		::devel/p5-Data-OptList

REGRESS_DEPENDS=:p5-Test-Warn->=0.10:devel/p5-Test-Warn \
		::devel/p5-Test-LongString \
		::devel/p5-Test-Exception \
		::devel/p5-Test-Output \
		::textproc/p5-Regexp-Common \
		::devel/p5-Locale-US \
		::www/p5-libwww \
		::www/p5-URI

.include <bsd.port.mk>
