# $OpenBSD: Makefile,v 1.14 2016/04/28 22:36:21 sthen Exp $

COMMENT=	Mason callback support via Params::CallbackRequest

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	MasonX-Interp-WithCallbacks-1.19
CATEGORIES=	www

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Params-CallbackRequest \
		www/p5-HTML-Mason
TEST_DEPENDS=	www/apache-httpd \
		www/p5-Apache-Test \
		www/p5-CGI

CONFIGURE_STYLE=modbuild

MAKE_ENV =	TEST_POD=Yes

# for tests
MAKE_ENV+=	APACHE_TEST_APXS=${LOCALBASE}/sbin/apxs2 \
		APACHE_TEST_HTTPD=${LOCALBASE}/sbin/httpd2
PORTHOME=	${WRKDIR}

.include <bsd.port.mk>
