# $OpenBSD: Makefile,v 1.2 2006/04/30 03:05:00 djm Exp $

COMMENT=	"Charting library for Perl"

DISTNAME=	Chart-2.4.1
PKGNAME=	${DISTNAME:S/^/p5-/}
CATEGORIES=	graphics perl5

MAINTAINER=	Damien Miller <djm@openbsd.org>

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Chart/}

RUN_DEPENDS=	:p5-GD-*:graphics/p5-GD
BUILD_DEPENDS=	${RUN_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>

