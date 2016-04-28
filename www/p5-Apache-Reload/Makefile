# $OpenBSD: Makefile,v 1.13 2016/04/28 17:00:47 sthen Exp $

COMMENT =	reload changed modules for mod_perl

DISTNAME =	Apache-Reload-0.13
REVISION =	0
CATEGORIES =	www

MODULES =	cpan
PKG_ARCH =	*

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	www/ap2-mod_perl

# Apache License 2.0
PERMIT_PACKAGE_CDROM =	Yes

MAKE_ENV =	APACHE_TEST_APXS=${LOCALBASE}/sbin/apxs2 \
		APACHE_TEST_HTTPD=${LOCALBASE}/sbin/httpd2

# regress tests require to run as non-root user,
# needs p5-Apache-Test chroot fix to work as root
#NO_TEST =		Yes

.include <bsd.port.mk>
