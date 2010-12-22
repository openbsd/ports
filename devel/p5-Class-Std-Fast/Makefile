# $OpenBSD: Makefile,v 1.1.1.1 2010/12/22 20:21:50 jasper Exp $

COMMENT=		faster Class::Std

DISTNAME=		Class-Std-Fast-v0.0.8
PKGNAME=		p5-${DISTNAME:S/v//}
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

CONFIGURE_STYLE=	modbuild

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-Class-Std

.include <bsd.port.mk>
