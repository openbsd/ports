# $OpenBSD: Makefile,v 1.1.1.1 2005/02/05 23:16:08 msf Exp $

COMMENT=	"Triple-DES EDE encryption/decryption"

DISTNAME=	Crypt-DES_EDE3-0.01
PKGNAME=	p5-Crypt-DES-EDE3-0.01
CATEGORIES=	security perl5

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Crypt/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::security/p5-Crypt-DES

CONFIGURE_STYLE= perl

PKG_ARCH=	*

.include <bsd.port.mk>
