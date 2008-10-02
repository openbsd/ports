# $OpenBSD: Makefile,v 1.6 2008/10/02 20:35:09 simon Exp $

SHARED_ONLY=	Yes

COMMENT=	Perl extensions for event-based programming

MODULES=	cpan
DISTNAME=	Event-Lib-1.03
PKGNAME=	p5-${DISTNAME}p1
CATEGORIES=	devel

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	event m

.include <bsd.port.mk>
