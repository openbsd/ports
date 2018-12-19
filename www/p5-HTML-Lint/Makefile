# $OpenBSD: Makefile,v 1.18 2018/12/19 23:08:00 sthen Exp $

COMMENT=		check for HTML errors in a string or file

MODULES=		cpan
PKG_ARCH=		*
DISTNAME =		HTML-Lint-2.32
CATEGORIES=		www

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		www/p5-HTML-Parser \
			www/p5-libwww

MAKE_ENV +=		TEST_POD=Yes

.include <bsd.port.mk>
