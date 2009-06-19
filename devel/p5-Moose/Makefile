# $OpenBSD: Makefile,v 1.8 2009/06/19 00:28:30 jim Exp $

COMMENT=	complete modern object system for perl 5

MODULES=	cpan
DISTNAME=	Moose-0.81
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CPAN_AUTHOR=	DROLSKY

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:p5-Class-MOP->=0.85:devel/p5-Class-MOP \
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
