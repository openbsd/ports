# $OpenBSD: Makefile,v 1.1.1.1 2001/12/31 18:18:03 shell Exp $

COMMENT=	"module to calculate SHA1 digests"

VERSION=	2.00
DISTNAME=	Digest-SHA1-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5
NEED_VERSION=	1.503
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= Digest

MAINTAINER=	Marc Matteo <marcm@lectroid.net>

# Artistic licence
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	perl

REGRESS_TARGET=		test
REGRESS_DEPENDS=	::devel/p5-Test-Harness

.include <bsd.port.mk>
