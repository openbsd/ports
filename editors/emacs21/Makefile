# $OpenBSD: Makefile,v 1.87 2016/06/28 21:00:25 kettenis Exp $

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
REVISION-main=		35
REVISION-el=		7
REVISION-leim=		7

CATEGORIES=		editors

HOMEPAGE=		https://www.gnu.org/software/emacs/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_GNU:=emacs/}
DISTFILES=		emacs-${VERSION}a.tar.gz leim-${VERSION}.tar.gz

MULTI_PACKAGES=		-main -el -leim

FLAVORS=		no_x11
FLAVOR?=

GCCARCH=		${MACHINE_ARCH}-unknown-openbsd${OSREV}

MODGNU_EMACS_YOURE_WEIRD = Oh yes

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS=		${GCCARCH} --with-pop --with-system-malloc
# ld -Z doesn't work with secure-PLT
.if ${MACHINE_ARCH} == "powerpc"
ARCH_LDFLAGS =		-Wl,-G0
CFLAGS +=		-mno-sdata
.elif ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "hppa" || \
    ${MACHINE_ARCH} == "sparc" || ${MACHINE_ARCH} == "sparc64"
ARCH_LDFLAGS =
.else
ARCH_LDFLAGS =		-Z
.endif
LDFLAGS=		${ARCH_LDFLAGS} -L${LOCALBASE}/lib -nopie
CFLAGS +=		-fno-pie

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS}" \
			ac_cv_lib_ossaudio__oss_ioctl=no

MAKE_ENV=		INSTALL_EMACS="${INSTALL_SCRIPT}"

SUBST_VARS=		GCCARCH VERSION

WANTLIB-main=		c m ncurses

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS+=	--with-x=no
.else
LIB_DEPENDS-main=	graphics/giflib \
			graphics/png \
			graphics/tiff
WANTLIB-main+=		ICE SM X11 Xaw Xext Xmu Xpm Xt z
WANTLIB-main+=		gif jpeg png tiff
.endif

RUN_DEPENDS=		emacs-${VERSION}:${PKGPATH}
RUN_DEPENDS-main=

PKG_ARCH-el=		*

NO_TEST=		Yes

post-build:
	cd ${WRKSRC}; src/emacs -batch -f batch-byte-compile \
	    lisp/mail/mh-{funcs,utils}.el

post-install:
	chmod -t ${PREFIX}/bin/emacs

.include <bsd.port.mk>
