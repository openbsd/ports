# $OpenBSD: Makefile,v 1.62 2013/02/01 16:34:36 naddy Exp $

COMMENT-main=		GNU editor: extensible, customizable, self documenting
COMMENT-el=		elisp sources for those who want to read/modify them
COMMENT-leim=		Library of Emacs Input Methods

VERSION=		21.4
DISTNAME=		emacs-${VERSION}
PKGNAME-main=		${DISTNAME}
FULLPKGNAME-el=		emacs-el-${VERSION}
FULLPKGPATH-el=		editors/emacs21,-el
FULLPKGNAME-leim=	emacs-leim-${VERSION}
FULLPKGPATH-leim=	editors/emacs21,-leim
REVISION-main=		20
REVISION-el=		6
REVISION-leim=		6

CATEGORIES=		editors

HOMEPAGE=		http://www.gnu.org/software/emacs/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNU:=emacs/}
DISTFILES=		emacs-${VERSION}a.tar.gz leim-${VERSION}.tar.gz

MULTI_PACKAGES=		-main -el -leim
USE_GROFF =		Yes

FLAVORS=		no_x11
FLAVOR?=

GCCARCH=		${MACHINE_ARCH}-unknown-openbsd${OSREV}

MODGNU_EMACS_YOURE_WEIRD = Oh yes

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS=		${GCCARCH} --with-pop --with-system-malloc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include \
				  -I${LOCALBASE}/include/libpng" \
			LDFLAGS="${ELF_TOOLCHAIN:L:S/yes/-Z/:S/no//} \
				 -L${LOCALBASE}/lib -nopie"
CFLAGS +=		-fno-pie

MAKE_ENV=		INSTALL_EMACS="${INSTALL_SCRIPT}"

SUBST_VARS=		GCCARCH VERSION

WANTLIB-main=		c m ncurses ossaudio

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS+=	--with-x=no
.else
LIB_DEPENDS-main=	graphics/libungif \
			graphics/png \
			graphics/tiff
WANTLIB-main+=		ICE SM X11 Xaw Xext Xmu Xpm Xt z
WANTLIB-main+=		ungif jpeg png tiff
.endif

RUN_DEPENDS=		emacs-${VERSION}:${PKGPATH}
RUN_DEPENDS-main=

PKG_ARCH-el=		*

NO_REGRESS=		Yes

.include <bsd.port.mk>
