#	$OpenBSD: Makefile,v 1.5 2010/04/15 22:28:43 sthen Exp $

COMMENT=	allow GD perl scripts to output SVG

DISTNAME=	GD-SVG-0.28
PKGNAME=	p5-${DISTNAME}p0
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
