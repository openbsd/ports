# $OpenBSD: Makefile,v 1.48 2013/04/19 21:32:37 sthen Exp $

SHARED_ONLY=	Yes

COMMENT-main=	Tk 8.4 bindings for Perl
COMMENT-demo=	demonstrate the features of ptk

MODULES=	cpan
VERSION=	804.030
REVISION=	0
DISTNAME=	Tk-${VERSION}
PKGNAME-main=	p5-Tk-${VERSION}
PKGNAME-demo=	p5-Tk-demo-${VERSION}
CATEGORIES=	x11 devel

# GPL + custom
PERMIT_PACKAGE_CDROM=	Yes

MULTI_PACKAGES=	-main -demo

WANTLIB-main=	X11 m z png
LIB_DEPENDS-main= graphics/png

RUN_DEPENDS=	www/p5-HTML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}

RUN_DEPENDS-demo=	x11/p5-Tk
PKG_ARCH-demo=		*

TEST_IS_INTERACTIVE=	x11

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/PNG/Makefile.PL

.include <bsd.port.mk>
