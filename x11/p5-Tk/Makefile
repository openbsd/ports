# $OpenBSD: Makefile,v 1.59 2019/11/08 21:39:34 ajacoutot Exp $

COMMENT-main=	Tk 8.4 bindings for Perl
COMMENT-demo=	demonstrate the features of ptk

MODULES=	cpan
VERSION=	804.034
DISTNAME=	Tk-${VERSION}
PKGNAME-main=	p5-Tk-${VERSION}
PKGNAME-demo=	p5-Tk-demo-${VERSION}
CATEGORIES=	x11 devel

# GPL + custom
PERMIT_PACKAGE=	Yes

WANTLIB-main=	${WANTLIB} X11 c m jpeg perl z png

MULTI_PACKAGES=	-main -demo

MAKE_FLAGS=	OPTIMIZE="${CFLAGS}"

LIB_DEPENDS-main =	graphics/jpeg \
			graphics/png

WANTLIB-demo=

RUN_DEPENDS=	www/p5-HTML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}

RUN_DEPENDS-demo=	x11/p5-Tk
PKG_ARCH-demo=		*

TEST_IS_INTERACTIVE=	x11

pre-configure:
	perl -pi -e "s,/usr/local,${LOCALBASE}," ${WRKSRC}/JPEG/Makefile.PL

.include <bsd.port.mk>
