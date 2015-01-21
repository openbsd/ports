# $OpenBSD: Makefile,v 1.15 2015/01/21 14:27:57 sthen Exp $

COMMENT=		retrieve home directory location

MODULES=		cpan
DISTNAME=		File-HomeDir-1.00
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		sysutils/p5-File-Which

.ifmake test
PORTHOME=		${HOME}
.endif

.include <bsd.port.mk>
