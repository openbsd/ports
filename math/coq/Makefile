# $OpenBSD: Makefile,v 1.36 2019/03/04 12:51:15 chrisz Exp $

COMMENT=		proof assistant based on a typed lambda calculus

V=			8.8.0
GH_ACCOUNT =		coq
GH_PROJECT =		coq
GH_TAGNAME =		V${V}
DISTNAME =		${GH_PROJECT}-${V}
WRKDIST =		${WRKDIR}/${GH_PROJECT}-${V}

CATEGORIES=		math
HOMEPAGE=		https://coq.inria.fr/

MAINTAINER=		Yozo Toda <yozo@v007.vaio.ne.jp>

# LGPL 2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype fribidi
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtksourceview-2.0 gtk-x11-2.0 intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pthread z 

MODULES=	lang/ocaml

BUILD_DEPENDS=	x11/lablgtk2 \
		lang/ocaml-camlp5 \
		math/ocaml-num \
		sysutils/findlib
RUN_DEPENDS=	x11/lablgtk2

DESTDIRNAME=	COQINSTALLPREFIX

USE_GMAKE=	Yes

CONFIGURE_STYLE= simple
CONFIGURE_ARGS=	-emacslib ${PREFIX}/share/emacs/site-lisp \
		-prefix ${PREFIX} \
		-libdir ${PREFIX}/lib/ocaml/coq \
		-mandir ${PREFIX}/man \
		-configdir ${SYSCONFDIR}/xdg/coq

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
ALL_TARGET=		world
INSTALL_TARGET=		install
.else
ALL_TARGET=		byte coq documentation \
			bin/coqide coqide-files theories/Init/Prelude.vo
INSTALL_TARGET=		install-coq install-byte install-meta
.endif

DPB_PROPERTIES +=	parallel

# Order is important!
TEST_TARGET=		check

post-install:
	${INSTALL_DATA_DIR} \
		${PREFIX}/share/doc/coq/
	${INSTALL_DATA} \
		${WRKDIST}/{LICENSE,CREDITS,CHANGES,CONTRIBUTING.md,README.md} \
		${PREFIX}/share/doc/coq/

.include <bsd.port.mk>
