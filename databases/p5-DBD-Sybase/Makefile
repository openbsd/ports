# $OpenBSD: Makefile,v 1.18 2010/10/18 17:06:07 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	Sybase database driver for the DBI module

DISTNAME=	DBD-Sybase-1.10
REVISION=	0
CATEGORIES=	databases
USE_GROFF =	Yes

# GPL/Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	m

MODULES=	devel/gettext \
		cpan

LIB_DEPENDS=	ct.>=3::databases/freetds
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:p5-DBI-*:databases/p5-DBI

CONFIGURE_ENV+=	SYBASE=${LOCALBASE}
CONFIGURE_ARGS=	--chained=y --accept_test_defaults

# after building, edit ${WRKSRC}/PWD to point at an available server
REGRESS_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
