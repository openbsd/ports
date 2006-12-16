# $OpenBSD: Makefile,v 1.3 2006/12/16 08:24:41 steven Exp $

COMMENT=		"debugging aid based on comments"

MODULES=		cpan
DISTNAME=		Smart-Comments-v1.0.2
PKGNAME=		p5-Smart-Comments-1.0.2p0
CATEGORIES=		devel

CPAN_AUTHOR=	DCONWAY

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::devel/p5-version
BUILD_DEPENDS=		${RUN_DEPENDS}

CONFIGURE_STYLE=	modbuild

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
