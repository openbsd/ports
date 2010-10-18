# $OpenBSD: Makefile,v 1.6 2010/10/18 17:06:08 espie Exp $

COMMENT=	seamless DB up- and downgrades

MODULES=	cpan
DISTNAME=	DBIx-Migration-0.05
REVISION=	0
CATEGORIES=	databases
USE_GROFF =	Yes

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
