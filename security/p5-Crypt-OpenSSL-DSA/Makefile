# $OpenBSD: Makefile,v 1.1.1.1 2002/10/15 11:21:33 wilfried Exp $

COMMENT=	"implements DSA using OpenSSL"

VERSION=	0.10
DISTNAME=	Crypt-OpenSSL-DSA-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Crypt/}

MAINTAINER=	Wesley Griffin <wgriffin@jtan.com>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		:p5-Crypt-OpenSSL-Random->=0.03:security/p5-Crypt-OpenSSL-Random
RUN_DEPENDS=		${BUILD_DEPENDS}

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
