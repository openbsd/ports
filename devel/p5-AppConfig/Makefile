# $OpenBSD: Makefile,v 1.15 2016/03/20 19:56:13 naddy Exp $

COMMENT=	bundle for reading and parsing config files

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	AppConfig-1.71
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

.ifmake test
PORTHOME=       ${HOME}
.endif

.include <bsd.port.mk>
