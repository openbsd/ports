#	$OpenBSD: Makefile,v 1.9 2010/12/03 11:45:37 ajacoutot Exp $

COMMENT=	allow GD perl scripts to output SVG

DISTNAME=	GD-SVG-0.28
REVISION=	1
CATEGORIES=	graphics

# perl licence
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	graphics/p5-GD \
		graphics/p5-SVG

MODULES=	cpan
USE_GROFF =	Yes

.include <bsd.port.mk>
