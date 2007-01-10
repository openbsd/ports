# $OpenBSD: Makefile,v 1.7 2007/01/10 21:50:34 jasper Exp $

COMMENT=	"Module bundle for reading and parsing config files"

MODULES=	cpan
DISTNAME=	AppConfig-1.64
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		:p5-File-HomeDir->=0.61:devel/p5-File-HomeDir
BUILD_DEPENDS=		${RUN_DEPENDS}

.ifmake regress
PORTHOME=       ${HOME}
.endif

.include <bsd.port.mk>
