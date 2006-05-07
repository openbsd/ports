# $OpenBSD: Makefile,v 1.4 2006/05/07 21:24:37 steven Exp $

COMMENT=	"perl interface to the SASL auth framework"

DISTNAME=	Authen-SASL-2.10
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Authen/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::security/p5-Digest-HMAC \
		::security/p5-GSSAPI

CONFIGURE_STYLE= perl

PKG_ARCH=	*

.include <bsd.port.mk>
