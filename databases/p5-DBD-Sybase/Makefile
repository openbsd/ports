# $OpenBSD: Makefile,v 1.28 2016/03/20 19:56:10 naddy Exp $

COMMENT=	Sybase database driver for the DBI module

DISTNAME =	DBD-Sybase-1.15
CATEGORIES=	databases

# GPL/Artistic License
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m perl

MODULES=	devel/gettext \
		cpan

LIB_DEPENDS =	databases/freetds
BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	databases/p5-DBI
WANTLIB +=	ct>=3

CONFIGURE_ENV+=	SYBASE=${LOCALBASE}
CONFIGURE_ARGS=	--chained=y --accept_test_defaults

# after building, edit ${WRKSRC}/PWD to point at an available server
TEST_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
