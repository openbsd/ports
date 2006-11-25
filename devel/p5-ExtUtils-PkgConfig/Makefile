# $OpenBSD: Makefile,v 1.3 2006/11/25 16:32:35 espie Exp $

COMMENT=	"simplistic perl interface to pkg-config"

MODULES=	cpan
DISTNAME=	ExtUtils-PkgConfig-1.07
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	devel

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/pkgconfig

.include <bsd.port.mk>
