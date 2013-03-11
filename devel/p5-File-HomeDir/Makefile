# $OpenBSD: Makefile,v 1.13 2013/03/11 10:50:17 espie Exp $

COMMENT=		retrieve home directory location

MODULES=		cpan
DISTNAME=		File-HomeDir-0.93
REVISION=		0
CATEGORIES=		devel
USE_GROFF =		Yes

CPAN_AUTHOR=		ADAMK

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		sysutils/p5-File-Which

.ifmake test
PORTHOME=		${HOME}
.endif

.include <bsd.port.mk>
