COMMENT=	export monitoring metrics for prometheus

DISTNAME=	Net-Prometheus-0.11
REVISION=	0
CATEGORIES=	databases

MAINTAINER=	Sven <svenfalempin@gmail.com>

# Perl
PERMIT_PACKAGE=	Yes

WANTLIB += c perl

MODULES=		cpan
MAKE_ENV=		TEST_POD=1
CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-Ref-Util \
			devel/p5-Struct-Dumb \
			www/p5-URI
TEST_DEPENDS=		devel/p5-Test-Fatal \
			devel/p5-Test-Pod \
			www/p5-HTTP-Message

.include <bsd.port.mk>
