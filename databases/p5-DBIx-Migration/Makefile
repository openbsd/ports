# $OpenBSD: Makefile,v 1.4 2010/07/03 02:44:13 naddy Exp $

COMMENT=	seamless DB up- and downgrades

MODULES=	cpan
DISTNAME=	DBIx-Migration-0.05
PKGNAME=	p5-${DISTNAME}p0
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
