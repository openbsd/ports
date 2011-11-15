# $OpenBSD: Makefile,v 1.54 2011/11/15 19:32:14 jasper Exp $

COMMENT=	Emacs Lisp-like runtime library

SHARED_ONLY=	Yes

VERSION=	0.92.1
DISTNAME=	librep-${VERSION}
SHARED_LIBS +=  rep                  14.0     # .16.0

CATEGORIES=	lang

HOMEPAGE=	http://librep.sourceforge.net/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=           http://download.tuxfamily.org/librep/
EXTRACT_SUFX=           .tar.xz

WANTLIB=		c gdbm gmp ffi m ncurses readline

MODULES=		devel/gettext
LIB_DEPENDS=		databases/gdbm \
			devel/gmp \
			devel/libffi

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
USE_GROFF =		Yes

MAKE_FLAGS=		rep_LIBTOOL=${LIBTOOL}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-static \
			--with-aclocaldir=${PREFIX}/share/aclocal
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -liconv -lintl"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/rep-xgettext.jl

# The bundled libtool gets installed by default, override it by installing
# the ports version directly.
post-install:
	${INSTALL_SCRIPT} ${LIBTOOL} ${PREFIX}/lib/rep/

.include <bsd.port.mk>
