# $OpenBSD: Makefile,v 1.7 2016/03/20 19:56:49 naddy Exp $

COMMENT=		API for locating user information

DISTNAME=		User-1.9
REVISION=		0
CATEGORIES=		misc

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
PKG_ARCH=		*

.ifmake test
PORTHOME=		${HOME}
.endif

.include <bsd.port.mk>
