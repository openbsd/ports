COMMENT=	Sybase database driver for the DBI module

V=		1.18
DISTNAME=	DBD-Sybase-$V
EXTRACT_SUFX=	.tgz
CATEGORIES=	databases

# Perl
PERMIT_PACKAGE=	Yes

WANTLIB += c ct intl m perl

MODULES=	cpan

LIB_DEPENDS=	databases/freetds
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	databases/p5-DBI

CONFIGURE_ENV+=	SYBASE=${LOCALBASE}
CONFIGURE_ARGS=	--chained=y --accept_test_defaults

# after building, edit ${WRKSRC}/PWD to point at an available server
TEST_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
