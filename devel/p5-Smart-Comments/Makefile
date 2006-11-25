# $OpenBSD: Makefile,v 1.1.1.1 2006/11/25 12:10:39 espie Exp $

COMMENT=		"debugging aid based on comments"

MODULES=		cpan
DISTNAME=		Smart-Comments-v1.0.2
PKGNAME=		p5-Smart-Comments-1.0.2
CATEGORIES=		devel

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../by-authors/id/D/DC/DCONWAY/}

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	modbuild

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
