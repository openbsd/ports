# $OpenBSD: Makefile,v 1.11 2012/08/23 15:05:15 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	Perl extensions for event-based programming

MODULES=	cpan
DISTNAME=	Event-Lib-1.03
REVISION=	4
CATEGORIES=	devel
USE_GROFF =	Yes

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c event m

.include <bsd.port.mk>
