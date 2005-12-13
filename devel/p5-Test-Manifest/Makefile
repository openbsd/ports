# $OpenBSD: Makefile,v 1.1.1.1 2005/12/13 21:46:43 steven Exp $

COMMENT=		"interact with a t/test_manifest file"
DISTNAME=		Test-Manifest-1.14
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# GPL/Artistic
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Test/}

REGRESS_DEPENDS=	:p5-Test-Pod->=1.00:devel/p5-Test-Pod \
			::devel/p5-Test-Pod-Coverage

CONFIGURE_STYLE=	perl

PKG_ARCH=		*

.include <bsd.port.mk>
