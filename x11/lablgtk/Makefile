# $OpenBSD: Makefile,v 1.17 2009/04/03 21:30:50 sturm Exp $

COMMENT=	OCaml interface to GTK+

DISTNAME=	lablgtk-1.2.7
PKGNAME=	${DISTNAME}p6
CATEGORIES=	x11 devel

HOMEPAGE=	http://wwwfun.kurims.kyoto-u.ac.jp/soft/olabl/lablgtk.html

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xext Xi glib gmodule m

MASTER_SITES=	http://wwwfun.kurims.kyoto-u.ac.jp/soft/olabl/dist/

LIB_DEPENDS=	gtk.>=1.2,gdk.>=1.2::x11/gtk+

FAKE_FLAGS=	BINDIR=${WRKINST}${PREFIX}/bin \
		INSTALLDIR=${WRKINST}${PREFIX}/lib/ocaml/lablgtk \
		DLLDIR=${WRKINST}${PREFIX}/lib/ocaml/stublibs

USE_X11=	Yes
USE_GMAKE=	Yes
MODULES=	devel/gettext \
		lang/ocaml

CONFIGURE_ARGS=	USE_CC=1 ${MODOCAML_NATIVE:S/Yes/USE_DOTOPT=1/:S/No//}

ALL_TARGET=	all ${MODOCAML_NATIVE:S/Yes/opt/:S/No//}

NO_REGRESS=	Yes

do-configure:
		cd ${WRKDIST}; PATH=${PORTPATH} gmake configure ${CONFIGURE_ARGS}

post-install:
		chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/ocaml/lablgtk
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lablgtk
		${INSTALL_DATA} ${WRKDIST}/README ${PREFIX}/share/doc/lablgtk

.include <bsd.port.mk>
