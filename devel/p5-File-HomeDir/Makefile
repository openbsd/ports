# $OpenBSD: Makefile,v 1.16 2016/03/20 19:56:23 naddy Exp $

COMMENT=		retrieve home directory location

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		File-HomeDir-1.00
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		sysutils/p5-File-Which

.ifmake test
PORTHOME=		${HOME}
.endif

.include <bsd.port.mk>
