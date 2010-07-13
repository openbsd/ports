#	$OpenBSD: Makefile,v 1.6 2010/07/13 19:46:13 sthen Exp $

COMMENT=	allow GD perl scripts to output SVG

DISTNAME=	GD-SVG-0.28
REVISION=	0
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
