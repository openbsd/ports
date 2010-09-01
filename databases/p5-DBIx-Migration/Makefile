# $OpenBSD: Makefile,v 1.5 2010/09/01 09:17:43 sthen Exp $

COMMENT=	seamless DB up- and downgrades

MODULES=	cpan
DISTNAME=	DBIx-Migration-0.05
REVISION=	0
CATEGORIES=	databases

CONFIGURE_STYLE=modbuild

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Class-Accessor \
		::devel/p5-File-Slurp
REGRESS_DEPENDS=::databases/p5-DBD-SQLite

MAKE_ENV+=	TEST_POD=1

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
