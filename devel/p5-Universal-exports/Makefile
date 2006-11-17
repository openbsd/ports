# $OpenBSD: Makefile,v 1.2 2006/11/17 16:02:48 espie Exp $

COMMENT=	"lightweight, universal exporting/require of variables"

MODULES=	cpan
V=		0.05
DISTNAME=	UNIVERSAL-exports-${V}
PKGNAME=	p5-Universal-exports-${V}
CATEGORIES=	devel

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Exporter-Lite

.include <bsd.port.mk>
