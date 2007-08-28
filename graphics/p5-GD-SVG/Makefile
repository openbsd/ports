#	$OpenBSD: Makefile,v 1.3 2007/08/28 20:12:41 simon Exp $

COMMENT=	allow GD perl scripts to output SVG

DISTNAME=	GD-SVG-0.28
CATEGORIES=	graphics

# perl licence
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::graphics/p5-GD \
		:p5-SVG-*:graphics/p5-SVG

MODULES=	cpan

.include <bsd.port.mk>
