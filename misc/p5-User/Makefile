# $OpenBSD: Makefile,v 1.9 2020/07/03 21:45:30 sthen Exp $

COMMENT=		API for locating user information

DISTNAME=		User-1.9
REVISION=		1
CATEGORIES=		misc

# Perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*

.ifmake test
PORTHOME=		${HOME}
.endif

.include <bsd.port.mk>
