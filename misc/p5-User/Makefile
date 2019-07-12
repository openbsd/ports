# $OpenBSD: Makefile,v 1.8 2019/07/12 20:47:53 sthen Exp $

COMMENT=		API for locating user information

DISTNAME=		User-1.9
REVISION=		0
CATEGORIES=		misc

# Perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*

.ifmake test
PORTHOME=		${HOME}
.endif

.include <bsd.port.mk>
