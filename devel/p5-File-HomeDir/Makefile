# $OpenBSD: Makefile,v 1.11 2010/11/15 19:46:03 espie Exp $

COMMENT=		retrieve home directory location

MODULES=		cpan
DISTNAME=		File-HomeDir-0.93
CATEGORIES=		devel
USE_GROFF =		Yes

CPAN_AUTHOR=		ADAMK

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		sysutils/p5-File-Which

.ifmake regress
PORTHOME=		${HOME}
.endif

.include <bsd.port.mk>
