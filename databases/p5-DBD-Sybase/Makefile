# $OpenBSD: Makefile,v 1.29 2017/11/21 00:12:59 naddy Exp $

COMMENT=	Sybase database driver for the DBI module

DISTNAME =	DBD-Sybase-1.15
CATEGORIES=	databases
REVISION =	0

# GPL/Artistic License
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =  c ct>=3 iconv intl m perl

MODULES=	cpan

LIB_DEPENDS =	databases/freetds
BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	databases/p5-DBI

CONFIGURE_ENV+=	SYBASE=${LOCALBASE}
CONFIGURE_ARGS=	--chained=y --accept_test_defaults

# after building, edit ${WRKSRC}/PWD to point at an available server
TEST_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
