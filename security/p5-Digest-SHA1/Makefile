# $OpenBSD: Makefile,v 1.9 2004/05/16 09:21:08 xsa Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"module to calculate SHA1 digests"

VERSION=	2.10
DISTNAME=	Digest-SHA1-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Digest/}

MAINTAINER=	Jim Geovedi <jim@corebsd.or.id>

# Artistic licence
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
