# $OpenBSD: Makefile,v 1.3 2006/12/06 17:06:18 jasper Exp $

COMMENT=	"Charting library for Perl"

DISTNAME=	Chart-2.4.1
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	graphics

MAINTAINER=	Damien Miller <djm@openbsd.org>

RUN_DEPENDS=	:p5-GD-*:graphics/p5-GD
BUILD_DEPENDS=	${RUN_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan

.include <bsd.port.mk>

