# $OpenBSD: Makefile,v 1.2 2011/11/08 12:48:55 jasper Exp $

COMMENT=		interface to URL shortening sites

DISTNAME=		WWW-Shorten-3.02
REVISION=		0
CATEGORIES=		www

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

CONFIGURE_STYLE=	modbuild

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-Config-Auto \
			www/p5-libwww

# Resolve conflict with audio/shorten
post-install:
	mv ${PREFIX}/bin/shorten ${PREFIX}/bin/shorten.pl

.include <bsd.port.mk>
