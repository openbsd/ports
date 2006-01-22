# $OpenBSD: Makefile,v 1.23 2006/01/22 23:21:46 sturm Exp $

COMMENT=	"Emacs Lisp-like runtime library"

SHARED_ONLY=	Yes

VERSION=	0.16.2
DISTNAME=	librep-${VERSION}
PKGNAME=	${DISTNAME}p2
SHARED_LIBS=	rep 12.0
CATEGORIES=	lang

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=librep/}

HOMEPAGE=	http://librep.sourceforge.net/

MODULES=	devel/gettext
LIB_DEPENDS=	gdbm.2::databases/gdbm

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m ncurses readline

GNU_ARCH=	${MACHINE_ARCH:S/amd64/x86_64/}-unknown-openbsd${OPSYS_VER}
SUBST_VARS=	GNU_ARCH VERSION

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
MAKE_FLAGS=	rep_LIBTOOL=${LIBTOOL}
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED} --enable-static
CONFIGURE_ARGS+=--without-gmp
# Don't try to run aclocal
CONFIGURE_ARGS+=--with-aclocaldir='$${datadir}/aclocal'
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS=	Yes

.include <bsd.port.mk>
