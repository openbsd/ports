# $OpenBSD: Makefile,v 1.3 2004/12/27 13:28:34 alek Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"OpenSSL's multiprecision integer arithmetic"

DISTNAME=	Crypt-OpenSSL-Bignum-0.03
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5

HOMEPAGE=	http://perl-openssl.sourceforge.net/

MAINTAINER=	Peter Stromberg <wilfried@openbsd.org>

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Crypt/}

# Artistic licence
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		crypto

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
