# $OpenBSD: Makefile,v 1.1.1.1 2005/01/27 14:14:53 sturm Exp $

COMMENT=	"Mason callback support via Params::CallbackRequest"

DISTNAME=	MasonX-Interp-WithCallbacks-1.13
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=MasonX/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Params-CallbackRequest \
		::www/p5-HTML-Mason

CONFIGURE_STYLE=perl modbuild

PKG_ARCH=	*

.include <bsd.port.mk>
