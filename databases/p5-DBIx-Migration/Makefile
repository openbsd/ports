# $OpenBSD: Makefile,v 1.2 2008/10/02 20:36:08 sthen Exp $
COMMENT=	seamless DB up- and downgrades

MODULES=	cpan
DISTNAME=	DBIx-Migration-0.05
PKGNAME=	${DISTNAME}p0
CATEGORIES=	databases

CONFIGURE_STYLE=modbuild

BUILD_DEPENDS=	::devel/p5-Class-Accessor \
		::devel/p5-File-Slurp
RUN_DEPENDS=	${BUILD_DEPENDS}
REGRESS_DEPENDS=::databases/p5-DBD-SQLite

MAKE_ENV+=	TEST_POD=1

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
