# $OpenBSD: Makefile,v 1.8 2013/03/11 11:35:53 espie Exp $

COMMENT=	perl interface to the Twitter API

DISTNAME=	Net-Twitter-4.00003

CATEGORIES=	net

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan
RUN_DEPENDS=	converters/p5-JSON-Any \
		devel/p5-Carp-Clan \
		devel/p5-Data-Visitor \
		devel/p5-DateTime-Format-Strptime \
		devel/p5-Devel-StackTrace \
		devel/p5-MooseX-Aliases \
		devel/p5-MooseX-Role-Parameterized \
		devel/p5-namespace-autoclean \
		net/p5-Net-OAuth
BUILD_DEPENDS=	${RUN_DEPENDS} \
		devel/p5-Test-Fatal \
		devel/p5-Test-Warn
TEST_DEPENDS=devel/p5-Test-Deep \
		devel/p5-Test-Spelling

MAKE_ENV=	TEST_POD=Yes

MODCPAN_EXAMPLES=	yes

.include <bsd.port.mk>
