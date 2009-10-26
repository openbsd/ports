# $OpenBSD: Makefile,v 1.9 2009/10/26 16:44:41 jim Exp $

COMMENT=	complete modern object system for perl 5

MODULES=	cpan
DISTNAME=	Moose-0.92
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CPAN_AUTHOR=	DROLSKY

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:p5-Class-MOP->=0.94:devel/p5-Class-MOP \
		::devel/p5-Data-OptList \
		::devel/p5-List-MoreUtils \
		::devel/p5-Sub-Exporter \
		::devel/p5-Sub-Name \
		::devel/p5-Task-Weaken \
		::devel/p5-Try-Tiny

REGRESS_DEPENDS=::devel/p5-Locale-US \
		::devel/p5-Module-Refresh \
		::devel/p5-Test-Deep \
		::devel/p5-Test-Exception \
		::devel/p5-Test-LongString \
		::devel/p5-Test-Output \
		:p5-Test-Warn->=0.10:devel/p5-Test-Warn \
		::textproc/p5-Regexp-Common \
		::www/p5-libwww \
		::www/p5-URI

.include <bsd.port.mk>
