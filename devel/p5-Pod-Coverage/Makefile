COMMENT= 	check if the documentation of a module is comprehensive

MODULES=	cpan
DISTNAME =	Pod-Coverage-0.23
CATEGORIES=	devel
REVISION =	1

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE=	Yes

WANTLIB=	perl

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Devel-Symdump \
		textproc/p5-Pod-Parser

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
