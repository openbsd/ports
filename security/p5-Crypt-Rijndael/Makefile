# $OpenBSD: Makefile,v 1.3 2004/01/17 15:58:09 naddy Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"interface to the rijndael encryption algorithm aka AES"

DISTNAME=	Crypt-Rijndael-0.05
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5

MAINTAINER=	Claudio Jeker <cjeker@diehard.n-r-g.com>

# LGPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Crypt/}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>	
