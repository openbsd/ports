# $OpenBSD: Makefile,v 1.7 2010/11/15 19:46:07 espie Exp $

COMMENT=	lightweight, universal exporting/require of variables

MODULES=	cpan
V=		0.05
DISTNAME=	UNIVERSAL-exports-${V}
PKGNAME=	p5-Universal-exports-${V}
REVISION =	0
CATEGORIES=	devel
USE_GROFF =	Yes

MAINTAINER=	Sam Smith <S@msmith.net>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Exporter-Lite

.include <bsd.port.mk>
