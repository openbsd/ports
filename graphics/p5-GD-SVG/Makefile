#	$OpenBSD: Makefile,v 1.10 2011/01/11 18:33:04 jasper Exp $

COMMENT=	allow GD perl scripts to output SVG

DISTNAME=	GD-SVG-0.33
CATEGORIES=	graphics

# perl licence
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	graphics/p5-GD \
		graphics/p5-SVG

MODULES=	cpan

MODCPAN_EXAMPLES=Yes

USE_GROFF =	Yes

.include <bsd.port.mk>
