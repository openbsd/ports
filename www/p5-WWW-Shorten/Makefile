# $OpenBSD: Makefile,v 1.1.1.1 2011/08/18 07:58:39 jasper Exp $

COMMENT=		interface to URL shortening sites

DISTNAME=		WWW-Shorten-3.02
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

.include <bsd.port.mk>
