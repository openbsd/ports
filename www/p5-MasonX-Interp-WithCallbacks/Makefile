# $OpenBSD: Makefile,v 1.3 2007/07/29 22:32:37 simon Exp $

COMMENT=	"Mason callback support via Params::CallbackRequest"

MODULES=	cpan
DISTNAME=	MasonX-Interp-WithCallbacks-1.13
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	www

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Params-CallbackRequest \
		::www/p5-HTML-Mason

CONFIGURE_STYLE=modbuild
MAKE_ENV+=	APACHE_TEST_APXS=/usr/sbin/apxs

.include <bsd.port.mk>
