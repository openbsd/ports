# $OpenBSD: Makefile,v 1.4 2002/09/19 06:42:00 marcm Exp $

COMMENT=	"module to calculate SHA1 digests"

VERSION=	2.01
DISTNAME=	Digest-SHA1-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Digest/}

MAINTAINER=	Marc Matteo <marcm@openbsd.org>

# Artistic licence
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	perl

REGRESS_DEPENDS=	::devel/p5-Test-Harness

.include <bsd.port.mk>
