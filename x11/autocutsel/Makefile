# $OpenBSD: Makefile,v 1.14 2019/06/22 22:44:07 jca Exp $

COMMENT=	keep X clipboard and cutbuffer in sync

V=		0.10.0
DISTNAME=	autocutsel-$V
REVISION=	2

CATEGORIES=	x11

HOMEPAGE=	http://www.nongnu.org/autocutsel/

MAINTAINER=	Jeremie Courreges-Anglas <jca@wxcvbn.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xpm Xt c
WANTLIB += xcb

MASTER_SITES=	https://github.com/sigmike/autocutsel/releases/download/$V/

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	 CPPFLAGS="-I${X11BASE}/include"

MODULES=		lang/ruby
MODRUBY_BUILDDEP=	No
MODRUBY_RUNDEP=		No
TEST_DEPENDS=		lang/ruby/${MODRUBY_REV}
TEST_IS_INTERACTIVE=	X11

do-test:
	@if pgrep -q autocutsel; then \
	  echo 'WARNING: autocutsel process detected, some tests might fail'; \
	fi
	cd ${WRKSRC}; ${RUBY} test_autocutsel.rb

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/autocutsel
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/autocutsel

.include <bsd.port.mk>
