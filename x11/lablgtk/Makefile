# $OpenBSD: Makefile,v 1.1.1.1 2002/11/20 01:11:39 naddy Exp $

COMMENT=	"OCaml interface to GTK+"

DISTNAME=	lablgtk-1.2.5
CATEGORIES=	x11 devel

HOMEPAGE=	http://wwwfun.kurims.kyoto-u.ac.jp/soft/olabl/lablgtk.html

MAINTAINER=	Nikolay Sturm <sturm@sec.informatik.tu-darmstadt.de>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://wwwfun.kurims.kyoto-u.ac.jp/soft/olabl/dist/

LIB_DEPENDS=	gtk.1.2,gdk.1.2::x11/gtk+

FAKE_FLAGS=	BINDIR=${WRKINST}${PREFIX}/bin \
		INSTALLDIR=${WRKINST}${PREFIX}/lib/ocaml/lablgtk

USE_GMAKE=	Yes
MODULES=	ocaml

CONFIGURE_ARGS=	USE_CC=1 ${MODOCAML_NATIVE:S/Yes/USE_DOTOPT=1/:S/No//}

ALL_TARGET=	all ${MODOCAML_NATIVE:S/Yes/opt/:S/No//}

NO_REGRESS=	Yes

do-configure:
		cd ${WRKDIST}; gmake configure ${CONFIGURE_ARGS}

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lablgtk
		${INSTALL_DATA} ${WRKDIST}/README ${PREFIX}/share/doc/lablgtk

.include <bsd.port.mk>
