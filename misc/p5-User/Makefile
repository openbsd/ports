# $OpenBSD: Makefile,v 1.5 2013/03/11 11:23:58 espie Exp $

COMMENT=		API for locating user information

DISTNAME=		User-1.9
REVISION=		0
CATEGORIES=		misc

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
USE_GROFF =		Yes

.ifmake test
PORTHOME=		${HOME}
.endif

.include <bsd.port.mk>
