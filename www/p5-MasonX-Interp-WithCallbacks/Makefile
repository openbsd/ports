# $OpenBSD: Makefile,v 1.2 2007/01/16 17:52:07 simon Exp $

COMMENT=	"Mason callback support via Params::CallbackRequest"

MODULES=	cpan
DISTNAME=	MasonX-Interp-WithCallbacks-1.13
CATEGORIES=	www

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Params-CallbackRequest \
		::www/p5-HTML-Mason

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
