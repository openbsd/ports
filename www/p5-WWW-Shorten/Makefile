# $OpenBSD: Makefile,v 1.6 2015/01/18 16:34:46 benoit Exp $

COMMENT=		interface to URL shortening sites

DISTNAME =		WWW-Shorten-3.06
CATEGORIES=		www

# Artistic 2.0
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan

CONFIGURE_STYLE=	modbuild

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-Config-Auto \
			www/p5-libwww
MAKE_ENV+=		TEST_POD=1

# Resolve conflict with audio/shorten
post-install:
	mv ${PREFIX}/bin/shorten ${PREFIX}/bin/shorten.pl
	mv ${PREFIX}/man/man1/shorten.1 ${PREFIX}/man/man1/shorten.pl.1

.include <bsd.port.mk>
