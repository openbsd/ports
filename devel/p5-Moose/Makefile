# $OpenBSD: Makefile,v 1.22 2013/03/11 10:50:19 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	complete modern object system for perl 5

MODULES=	cpan
DISTNAME=	Moose-1.25
REVISION=	0
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

CPAN_AUTHOR=	DROLSKY

BUILD_DEPENDS=	devel/p5-Task-Weaken

RUN_DEPENDS=	devel/p5-Class-MOP>=1.11 \
		devel/p5-Data-OptList \
		devel/p5-List-MoreUtils \
		devel/p5-Package-DeprecationManager \
		devel/p5-Params-Util \
		devel/p5-Sub-Exporter \
		devel/p5-Sub-Name \
		devel/p5-Try-Tiny

TEST_DEPENDS=databases/p5-DBM-Deep \
		devel/p5-DateTime-Calendar-Mayan \
		devel/p5-DateTime-Format-MySQL \
		devel/p5-Declare-Constraints-Simple \
		devel/p5-IO-String \
		devel/p5-Locale-US \
		devel/p5-Module-Refresh \
		devel/p5-Params-Coerce \
		devel/p5-Test-Deep \
		devel/p5-Test-Fatal \
		devel/p5-Test-Output \
		devel/p5-Test-Requires \
		textproc/p5-Regexp-Common \
		www/p5-libwww \
		www/p5-URI

.include <bsd.port.mk>
