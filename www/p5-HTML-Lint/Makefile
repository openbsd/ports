# $OpenBSD: Makefile,v 1.20 2020/07/03 21:46:00 sthen Exp $

COMMENT=		check for HTML errors in a string or file

MODULES=		cpan
PKG_ARCH=		*
DISTNAME =		HTML-Lint-2.32
CATEGORIES=		www
REVISION =		0

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		www/p5-HTML-Parser \
			www/p5-libwww

MAKE_ENV +=		TEST_POD=Yes

.include <bsd.port.mk>
