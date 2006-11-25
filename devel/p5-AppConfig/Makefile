# $OpenBSD: Makefile,v 1.6 2006/11/25 16:32:33 espie Exp $

COMMENT=	"Module bundle for reading and parsing config files"

MODULES=	cpan
DISTNAME=	AppConfig-1.63
CATEGORIES=	devel

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::devel/p5-File-HomeDir
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
