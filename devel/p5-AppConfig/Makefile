# $OpenBSD: Makefile,v 1.9 2010/10/18 17:47:55 espie Exp $

COMMENT=	Module bundle for reading and parsing config files

MODULES=	cpan
DISTNAME=	AppConfig-1.66
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.ifmake regress
PORTHOME=       ${HOME}
.endif

.include <bsd.port.mk>
