# $OpenBSD: Makefile,v 1.1.1.1 2005/02/23 20:08:48 sturm Exp $

COMMENT=	"Diffie-Hellman key exchange system"

DISTNAME=	Crypt-DH-0.03
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Crypt/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::security/p5-Crypt-Random

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
