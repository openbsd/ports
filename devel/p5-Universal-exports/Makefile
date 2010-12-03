# $OpenBSD: Makefile,v 1.8 2010/12/03 11:44:38 ajacoutot Exp $

COMMENT=	lightweight, universal exporting/require of variables

MODULES=	cpan
V=		0.05
DISTNAME=	UNIVERSAL-exports-${V}
PKGNAME=	p5-Universal-exports-${V}
REVISION=	1
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
