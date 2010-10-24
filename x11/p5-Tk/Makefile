# $OpenBSD: Makefile,v 1.41 2010/10/24 21:15:33 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT-main=	Tk 8.4 bindings for Perl
COMMENT-demo=	demonstrate the features of ptk

MODULES=	cpan
VERSION=	804.029
DISTNAME=	Tk-${VERSION}
PKGNAME-main=	p5-Tk-${VERSION}
REVISION-main=	0
PKGNAME-demo=	p5-Tk-demo-${VERSION}
REVISION-demo=	0
CATEGORIES=	x11 devel

# GPL + custom
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=	-main -demo

WANTLIB-main=	X11 m z png
LIB_DEPENDS-main= ::graphics/png

RUN_DEPENDS=	:p5-HTML-Parser-*:www/p5-HTML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}

RUN_DEPENDS-demo=	::x11/p5-Tk
PKG_ARCH-demo=		*

USE_GROFF =	Yes

REGRESS_IS_INTERACTIVE=	x11

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/PNG/Makefile.PL

.include <bsd.port.mk>
