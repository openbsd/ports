# $OpenBSD: Makefile,v 1.14 2008/10/02 20:34:39 simon Exp $

SHARED_ONLY=	Yes

COMMENT=	Sybase database driver for the DBI module

DISTNAME=	DBD-Sybase-1.04
PKGNAME=	p5-${DISTNAME}p3
CATEGORIES=	databases

# GPL/Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		intl m

MODULES=	devel/gettext	cpan

LIB_DEPENDS=	ct.>=3::databases/freetds
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:p5-DBI-*:databases/p5-DBI \

CONFIGURE_ENV+=	SYBASE=${LOCALBASE}

NO_REGRESS=	Yes

.include <bsd.port.mk>
