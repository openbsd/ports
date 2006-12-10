# $OpenBSD: Makefile,v 1.3 2006/12/10 11:56:25 espie Exp $

COMMENT=	"simple database abstraction"

MODULES=	cpan
V=		3.0.14
DISTNAME=	Class-DBI-v${V}
PKGNAME=	p5-Class-DBI-${V}
CATEGORIES=	databases

MAINTAINER=	Sam Smith <S@msmith.net>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Class-Accessor \
		::devel/p5-Class-Data-Inheritable \
		::devel/p5-Class-Trigger \
		::devel/p5-Clone \
		::devel/p5-Universal-moniker \
		::devel/p5-version \
		::databases/p5-Ima-DBI
REGRESS_DEPENDS=::databases/p5-DBD-SQLite

.include <bsd.port.mk>
