# $OpenBSD: Makefile,v 1.8 2010/12/03 11:46:53 ajacoutot Exp $

COMMENT=	Mason callback support via Params::CallbackRequest

MODULES=	cpan
DISTNAME=	MasonX-Interp-WithCallbacks-1.13
REVISION=	1
CATEGORIES=	www
USE_GROFF =	Yes

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Params-CallbackRequest \
		www/p5-HTML-Mason

CONFIGURE_STYLE=modbuild
MAKE_ENV+=	APACHE_TEST_APXS=/usr/sbin/apxs

.include <bsd.port.mk>
