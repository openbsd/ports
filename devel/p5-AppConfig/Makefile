# $OpenBSD: Makefile,v 1.11 2013/03/11 10:50:13 espie Exp $

COMMENT=	Module bundle for reading and parsing config files

MODULES=	cpan
DISTNAME=	AppConfig-1.66
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

.ifmake test
PORTHOME=       ${HOME}
.endif

.include <bsd.port.mk>
