# $OpenBSD: Makefile,v 1.21 2002/08/31 15:09:23 shell Exp $

COMMENT=	"basic utilities for writing tests in perl"

VERSION=	0.47
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
