# $OpenBSD: Makefile,v 1.10 2015/01/21 06:23:34 bentley Exp $

COMMENT=	perl interface to the Twitter API

DISTNAME=	Net-Twitter-4.00006
REVISION =	0

CATEGORIES=	net

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan
CONFIGURE_STYLE=modbuild
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
TEST_DEPENDS=	devel/p5-Test-Deep \
		devel/p5-Test-Spelling

MAKE_ENV=	TEST_POD=Yes

MODCPAN_EXAMPLES=	yes

.include <bsd.port.mk>
