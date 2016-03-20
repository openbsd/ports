# $OpenBSD: Makefile,v 1.56 2016/03/20 19:57:24 naddy Exp $

COMMENT-main=	Tk 8.4 bindings for Perl
COMMENT-demo=	demonstrate the features of ptk

MODULES=	cpan
VERSION=	804.033
DISTNAME=	Tk-${VERSION}
PKGNAME-main=	p5-Tk-${VERSION}
REVISION-main=	0
PKGNAME-demo=	p5-Tk-demo-${VERSION}
CATEGORIES=	x11 devel

# GPL + custom
PERMIT_PACKAGE_CDROM=	Yes

MULTI_PACKAGES=	-main -demo

MAKE_FLAGS=	OPTIMIZE="${CFLAGS}"

WANTLIB-main=	${WANTLIB} X11 m jpeg perl z png
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
