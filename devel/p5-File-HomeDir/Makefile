# $OpenBSD: Makefile,v 1.10 2010/10/22 20:20:05 jasper Exp $

COMMENT=		retrieve home directory location

MODULES=		cpan
DISTNAME=		File-HomeDir-0.93
CATEGORIES=		devel
USE_GROFF =	Yes

CPAN_AUTHOR=		ADAMK

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::sysutils/p5-File-Which

.ifmake regress
PORTHOME=		${HOME}
.endif

.include <bsd.port.mk>
