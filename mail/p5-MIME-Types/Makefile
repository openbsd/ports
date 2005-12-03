# $OpenBSD: Makefile,v 1.6 2005/12/03 06:47:31 steven Exp $

COMMENT=	"perl module to manage MIME types"

DISTNAME=	MIME-Types-1.16
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	mail perl5

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=MIME/}

CONFIGURE_STYLE=	perl

PKG_ARCH= *

.include <bsd.port.mk>
