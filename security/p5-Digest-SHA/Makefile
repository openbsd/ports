# $OpenBSD: Makefile,v 1.3 2006/06/16 16:56:56 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	"perl extension for SHA-1/224/256/384/512"
DISTNAME=	Digest-SHA-5.41
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Digest/}

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
