# $OpenBSD: Makefile,v 1.24 2013/03/21 14:55:28 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	Sybase database driver for the DBI module

DISTNAME=	DBD-Sybase-1.14
CATEGORIES=	databases

# GPL/Artistic License
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m

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
