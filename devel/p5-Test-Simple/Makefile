# $OpenBSD: Makefile,v 1.19 2002/07/06 10:24:51 shell Exp $

COMMENT=	"basic utilities for writing tests in perl"

VERSION=	0.45
DISTNAME=	Test-Simple-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
NEED_VERSION=	1.525

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Test/}

MAINTAINER=	Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

REGRESS_TARGET=	test
REGRESS_DEPENDS=	::devel/p5-Test-Harness

.include <bsd.port.mk>
