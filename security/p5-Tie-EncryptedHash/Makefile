# $OpenBSD: Makefile,v 1.1.1.1 2005/02/06 15:08:44 sturm Exp $

COMMENT=	"hashes with encrypting fields"

DISTNAME=	Tie-EncryptedHash-1.21
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Tie/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::security/p5-Crypt-CBC

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
