# $OpenBSD: Makefile,v 1.16 2002/04/18 14:24:59 shell Exp $

COMMENT=	"basic utilities for writing tests in perl"

VERSION=	0.43
DISTNAME=	Test-Simple-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
NEED_VERSION=	1.524

MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= Test

MAINTAINER=	Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

REGRESS_TARGET=	test
REGRESS_DEPENDS=	::devel/p5-Test-Harness

.include <bsd.port.mk>
