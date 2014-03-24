# $OpenBSD: Makefile,v 1.11 2014/03/24 09:16:23 jasper Exp $

COMMENT=	Mason callback support via Params::CallbackRequest

MODULES=	cpan
DISTNAME=	MasonX-Interp-WithCallbacks-1.13
REVISION=	2
CATEGORIES=	www

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Params-CallbackRequest \
		www/p5-HTML-Mason
TEST_DEPENDS=	www/apache-httpd-openbsd \
		www/p5-Apache-Test

CONFIGURE_STYLE=modbuild

# for tests
MAKE_ENV+=	APACHE_TEST_APXS=${LOCALBASE}/sbin/apxs \
		APACHE_TEST_HTTPD=${LOCALBASE}/sbin/httpd
PORTHOME=	${WRKDIR}

.include <bsd.port.mk>
