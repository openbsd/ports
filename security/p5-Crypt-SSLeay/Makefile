# $OpenBSD: Makefile,v 1.16 2004/01/17 15:58:09 naddy Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"library to provide LWP https support via OpenSSL"

DISTNAME=	Crypt-SSLeay-0.45
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5

MAINTAINER=	Jim Geovedi <jim@corebsd.or.id>
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Crypt/}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
