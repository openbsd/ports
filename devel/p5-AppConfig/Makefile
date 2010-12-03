# $OpenBSD: Makefile,v 1.10 2010/12/03 11:44:27 ajacoutot Exp $

COMMENT=	Module bundle for reading and parsing config files

MODULES=	cpan
DISTNAME=	AppConfig-1.66
REVISION=	0
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
