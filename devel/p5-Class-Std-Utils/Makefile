# $OpenBSD: Makefile,v 1.4 2007/09/16 02:53:03 merdely Exp $

COMMENT=		utilities functions to build inside-out objects

MODULES=		cpan
DISTNAME=		Class-Std-Utils-0.0.2
PKGNAME=		p5-${DISTNAME}p0
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		::devel/p5-version
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
