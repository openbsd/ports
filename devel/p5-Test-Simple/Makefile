# $OpenBSD: Makefile,v 1.20 2002/07/30 10:23:43 shell Exp $

COMMENT=	"basic utilities for writing tests in perl"

VERSION=	0.46
DISTNAME=	Test-Simple-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Test/}

MAINTAINER=	Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

BUILD_DEPENDS=	:p5-Test-Harness-*:devel/p5-Test-Harness
RUN_DEPENDS=	${BUILD_DEPENDS}

REGRESS_TARGET=	test

.include <bsd.port.mk>
