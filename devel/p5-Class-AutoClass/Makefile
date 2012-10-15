#	$OpenBSD: Makefile,v 1.11 2012/10/15 15:06:42 sthen Exp $

COMMENT=	get and set methods and simplify object initialization

DISTNAME=	Class-AutoClass-1.54
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-Hash-AutoHash-Args \
			devel/p5-IO-stringy
REGRESS_DEPENDS=	devel/p5-Test-Deep

.include <bsd.port.mk>
