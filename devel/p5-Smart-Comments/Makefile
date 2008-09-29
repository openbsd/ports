# $OpenBSD: Makefile,v 1.5 2008/09/29 22:53:58 simon Exp $

COMMENT=		debugging aid based on comments

MODULES=		cpan
DISTNAME=		Smart-Comments-v1.0.2
PKGNAME=		p5-Smart-Comments-1.0.2p1
CATEGORIES=		devel

CPAN_AUTHOR=	DCONWAY

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	modbuild

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
