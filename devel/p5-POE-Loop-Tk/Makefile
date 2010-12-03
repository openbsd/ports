# $OpenBSD: Makefile,v 1.8 2010/12/03 11:44:34 ajacoutot Exp $

COMMENT=		bridge that allows POE to be driven by Tk

DISTNAME=		POE-Loop-Tk-1.302
REVISION=		0
CATEGORIES=		devel

MODULES=		cpan

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_ARGS+=	--default
USE_GROFF =		Yes

BUILD_DEPENDS=		devel/p5-POE-Test-Loops
RUN_DEPENDS+=		x11/p5-Tk \
			devel/p5-POE>=1.006


REGRESS_IS_INTERACTIVE= x11

.include <bsd.port.mk>
