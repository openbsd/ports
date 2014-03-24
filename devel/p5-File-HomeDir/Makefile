# $OpenBSD: Makefile,v 1.14 2014/03/24 08:38:49 jasper Exp $

COMMENT=		retrieve home directory location

MODULES=		cpan
DISTNAME=		File-HomeDir-1.00
CATEGORIES=		devel
USE_GROFF =		Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		sysutils/p5-File-Which

.ifmake test
PORTHOME=		${HOME}
.endif

.include <bsd.port.mk>
