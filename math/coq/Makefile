# $OpenBSD: Makefile,v 1.20 2013/02/07 12:16:08 naddy Exp $

COMMENT=		proof assistant based on a typed lambda calculus

V=			8.4pl1
DISTNAME=		coq-$V
CATEGORIES=		math
HOMEPAGE=		http://coq.inria.fr/

MAINTAINER=		Yozo Toda <yozo@v007.vaio.ne.jp>

# LGPL 2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 iconv intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm z

MASTER_SITES=	${HOMEPAGE}distrib/V${V}/files/

RUN_DEPENDS=	x11/lablgtk2
BUILD_DEPENDS=	${RUN_DEPENDS}

DESTDIRNAME=	COQINSTALLPREFIX

USE_GMAKE=	Yes
USE_GROFF=	Yes

MODULES=	lang/ocaml

CONFIGURE_STYLE= simple
CONFIGURE_ARGS=	-emacslib ${PREFIX}/share/emacs/site-lisp \
		-makecmd ${GMAKE} \
		-prefix ${PREFIX} \
		-mandir ${PREFIX}/man \
		-configdir ${SYSCONFDIR}/xdg/coq \
		-usecamlp4

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native_dynlink}
CONFIGURE_ARGS+=	-opt
.else
CONFIGURE_ARGS+=	-byteonly
.endif

ALL_TARGET=		world
# Order is important!
INSTALL_TARGET=		install-byte install-ide-byte install
REGRESS_TARGET=		check

post-install:
	cd ${WRKDIST}; ${INSTALL_DATA} LICENSE COPYRIGHT CREDITS CHANGES \
	    COMPATIBILITY ${PREFIX}/share/doc/coq/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/coq/
	mv ${WRKINST}${SYSCONFDIR}/xdg/coq/* ${PREFIX}/share/examples/coq/
	rmdir ${WRKINST}${SYSCONFDIR}/xdg/coq/ ${WRKINST}${SYSCONFDIR}/xdg/

.include <bsd.port.mk>
