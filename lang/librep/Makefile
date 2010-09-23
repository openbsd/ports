# $OpenBSD: Makefile,v 1.43 2010/09/23 11:56:25 jasper Exp $

COMMENT=	Emacs Lisp-like runtime library

SHARED_ONLY=	Yes

VERSION=	0.90.5
DISTNAME=	librep-${VERSION}
REVISION=	2
SHARED_LIBS +=  rep                  13.0     # .13.0

CATEGORIES=	lang

HOMEPAGE=	http://librep.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=librep/}
EXTRACT_SUFX=		.tar.bz2

WANTLIB=		c m ncurses readline

MODULES=		devel/gettext
LIB_DEPENDS=		gdbm.>=2::databases/gdbm \
			gmp::devel/gmp \
			ffi::devel/libffi

GNU_ARCH=		${MACHINE_ARCH:S/amd64/x86_64/}-unknown-openbsd${OSREV}
SUBST_VARS=		GNU_ARCH VERSION

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

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

# The bundled libtool get's installed by default, override it by installing
# the ports version directly.
post-install:
	${INSTALL_SCRIPT} ${LIBTOOL} ${REP_LT}

.include <bsd.port.mk>
