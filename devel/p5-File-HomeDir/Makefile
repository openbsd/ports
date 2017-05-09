# $OpenBSD: Makefile,v 1.17 2017/05/09 08:12:45 benoit Exp $

COMMENT=		retrieve home directory location

MODULES=		cpan
PKG_ARCH=		*
DISTNAME =		File-HomeDir-1.002
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		sysutils/p5-File-Which

.ifmake test
PORTHOME=		${HOME}
.endif

.include <bsd.port.mk>
