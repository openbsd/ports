# $OpenBSD: Makefile,v 1.1.1.1 2006/11/04 17:57:17 espie Exp $

COMMENT=        "cryptographic signatures for objects"

DISTNAME=	Object-Signature-1.05
PKGNAME=	p5-${DISTNAME}
CATEGORIES=     devel perl5 

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Same as perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Object/}

CONFIGURE_STYLE=perl

REGRESS_DEPENDS=::devel/p5-Test-Pod
MAKE_ENV=	AUTOMATED_TESTING=Yes

PKG_ARCH=	*

.include <bsd.port.mk>
