# $OpenBSD: Makefile,v 1.9 2011/04/05 20:38:43 jasper Exp $

COMMENT=		debugging aid based on comments

MODULES=		cpan
DISTNAME=		Smart-Comments-1.0.4
CATEGORIES=		devel

CPAN_AUTHOR=		CHORNY

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	modbuild

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
