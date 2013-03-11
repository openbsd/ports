# $OpenBSD: Makefile,v 1.25 2013/03/11 11:44:45 espie Exp $

COMMENT=	high-performance dynamic web authoring system

MODULES=	cpan
DISTNAME=	HTML-Mason-1.45
CATEGORIES=	www
USE_GROFF =	Yes

HOMEPAGE=	http://www.masonhq.com/
MAINTAINER=	David Hill <dhill@openbsd.org>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Cache-Cache>=1.02 \
		devel/p5-Class-Container>=0.10 \
		devel/p5-Exception-Class>=1.19 \
		devel/p5-Params-Validate>=0.74 \
		devel/p5-Log-Any \
		devel/p5-Test-Deep \
		www/p5-HTML-Parser \
		www/p5-libapreq>=1.1 \
		www/mod_perl>=1.27 

MAKE_ENV=       TEST_POD=Yes

TEST_DEPENDS=devel/p5-Test-Memory-Cycle \
		devel/p5-PadWalker

CONFIGURE_STYLE=	modbuild
CONFIGURE_ARGS+=	--no-prompts

.include <bsd.port.mk>
