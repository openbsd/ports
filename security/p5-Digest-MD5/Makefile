#   $OpenBSD: Makefile,v 1.9 2002/10/30 00:03:38 pvalchev Exp $

IGNORE=		"comes with ${OPSYS} as of release 3.3"

COMMENT=	"module to calculate digests"

DISTNAME=	Digest-MD5-2.16
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5
NEED_VERSION=	1.503
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Digest/}

MAINTAINER=	Benjamin Lerman <quisar@quisar.ambre.net>

# Artistic licence
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
