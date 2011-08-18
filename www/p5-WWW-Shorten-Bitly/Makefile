# $OpenBSD: Makefile,v 1.1.1.1 2011/08/18 11:48:12 jasper Exp $

COMMENT=		interface to bit.ly shortening site

DISTNAME=		WWW-Shorten-Bitly-1.14
CATEGORIES=		www

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		converters/p5-JSON-Any \
			textproc/p5-XML-Simple \
			www/p5-WWW-Shorten

.include <bsd.port.mk>
