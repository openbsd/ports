# $OpenBSD: Makefile,v 1.8 2007/08/26 18:39:52 simon Exp $

COMMENT=	Module bundle for reading and parsing config files

MODULES=	cpan
DISTNAME=	AppConfig-1.66
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.ifmake regress
PORTHOME=       ${HOME}
.endif

.include <bsd.port.mk>
