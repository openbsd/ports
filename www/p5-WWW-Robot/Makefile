# $OpenBSD: Makefile,v 1.6 2010/12/03 11:46:53 ajacoutot Exp $

COMMENT=		configurable web traversal engine

DISTNAME=		WWW-Robot-0.025
REVISION=		0
CATEGORIES=		www

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan
USE_GROFF =		Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		www/p5-HTML-Parser \
			www/p5-HTML-Tree \
			www/p5-URI \
			www/p5-libwww 

.include <bsd.port.mk>
