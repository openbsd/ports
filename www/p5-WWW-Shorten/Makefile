# $OpenBSD: Makefile,v 1.10 2019/07/12 20:50:58 sthen Exp $

COMMENT=		interface to URL shortening sites

DISTNAME =		WWW-Shorten-3.093
CATEGORIES=		www

# Perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-Config-Auto \
			www/p5-libwww
MAKE_ENV+=		TEST_POD=1

# Resolve conflict with audio/shorten
post-install:
	mv ${PREFIX}/bin/shorten ${PREFIX}/bin/shorten.pl
	mv ${PREFIX}/man/man1/shorten.1 ${PREFIX}/man/man1/shorten.pl.1

.include <bsd.port.mk>
