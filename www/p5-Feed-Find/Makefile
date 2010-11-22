# $OpenBSD: Makefile,v 1.4 2010/11/22 08:36:51 espie Exp $

COMMENT=		autodiscover syndication feeds

MODULES=		cpan
CPAN_AUTHOR=		BTROTT
DISTNAME=		Feed-Find-0.06
CATEGORIES=		www
USE_GROFF =		Yes

CONFIGURE_STYLE=	modbuild

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	www/p5-libwww \
		www/p5-HTML-Parser \
		www/p5-URI \
		devel/p5-Class-ErrorHandler

.include <bsd.port.mk>
