# $OpenBSD: Makefile,v 1.5 2010/10/24 21:11:00 ajacoutot Exp $

COMMENT=		bridge that allows POE to be driven by Tk

DISTNAME=		POE-Loop-Tk-1.302
CATEGORIES=		devel

MODULES=		cpan

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_ARGS+=	--default
USE_GROFF =	Yes

BUILD_DEPENDS=		::devel/p5-POE-Test-Loops
RUN_DEPENDS+=		::x11/p5-Tk \
			:p5-POE->1.006:devel/p5-POE


REGRESS_IS_INTERACTIVE= x11

.include <bsd.port.mk>
