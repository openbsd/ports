# $OpenBSD: Makefile,v 1.1.1.1 2005/01/27 13:13:57 sturm Exp $

COMMENT=	"functional and object-oriented callback architecture"

DISTNAME=	Params-CallbackRequest-1.13
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Params/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Params-Validate \
		::devel/p5-Exception-Class

CONFIGURE_STYLE=perl modbuild

PKG_ARCH=	*

.include <bsd.port.mk>
