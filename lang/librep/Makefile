# $OpenBSD: Makefile,v 1.47 2010/10/18 19:20:42 espie Exp $

COMMENT=	Emacs Lisp-like runtime library

SHARED_ONLY=	Yes

VERSION=	0.91.0
DISTNAME=	librep-${VERSION}
REVISION=	0
SHARED_LIBS +=  rep                  13.0     # .13.0

CATEGORIES=	lang

HOMEPAGE=	http://librep.sourceforge.net/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=           http://download.tuxfamily.org/sawfish/librep/
EXTRACT_SUFX=           .tar.bz2

WANTLIB=		c m ncurses readline

MODULES=		devel/gettext
LIB_DEPENDS=		gdbm.>=2::databases/gdbm \
			gmp::devel/gmp \
			ffi::devel/libffi

GNU_ARCH=		${MACHINE_ARCH:S/amd64/x86_64/}-unknown-openbsd${OSREV}
SUBST_VARS=		GNU_ARCH VERSION

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
USE_GROFF =	Yes

MAKE_FLAGS=		rep_LIBTOOL=${LIBTOOL}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-static \
			--with-aclocaldir=${PREFIX}/share/aclocal
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -liconv -lintl"

REP_LT= 		${PREFIX}/lib/rep/${GNU_ARCH}/

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/rep-xgettext.jl

# The bundled libtool gets installed by default, override it by installing
# the ports version directly.
post-install:
	${INSTALL_SCRIPT} ${LIBTOOL} ${REP_LT}

.include <bsd.port.mk>
