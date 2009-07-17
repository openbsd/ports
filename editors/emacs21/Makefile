# $OpenBSD: Makefile,v 1.43 2009/07/17 16:38:48 naddy Exp $

COMMENT-main=		GNU editor: extensible, customizable, self documenting
COMMENT-el=		elisp sources for those who want to read/modify them
COMMENT-leim=		Library of Emacs Input Methods

VERSION=		21.4
DISTNAME=		emacs-${VERSION}
PKGNAME-main=		${DISTNAME}p9
FULLPKGNAME-el=		emacs-el-${VERSION}p1
FULLPKGNAME-leim=	emacs-leim-${VERSION}p1

CATEGORIES=		editors

HOMEPAGE=		http://www.gnu.org/software/emacs/

MAINTAINER=		Rich Cannings <cannings@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNU:=emacs/}
DISTFILES=		emacs-${VERSION}a.tar.gz leim-${VERSION}.tar.gz

MULTI_PACKAGES=		-main -el -leim

FLAVORS=		no_x11
FLAVOR?=

GCCARCH=		${MACHINE_ARCH}-unknown-openbsd${OPSYS_VER}

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS=		${GCCARCH} --with-pop
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include \
				  -I${LOCALBASE}/include/libpng" \
			LDFLAGS="${ELF_TOOLCHAIN:L:S/yes/-Z/:S/no//} \
				 -L${LOCALBASE}/lib"

# Disable propolice on powerpc due to gcc3+propolice bug.
.if ${MACHINE_ARCH} == "powerpc"
CONFIGURE_ENV+=		CFLAGS="${CFLAGS} -fno-stack-protector"
.endif

MAKE_ENV=		INSTALL_EMACS="${INSTALL_SCRIPT}"

SUBST_VARS=		GCCARCH VERSION

WANTLIB-main=		c m ncurses ossaudio
.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+=	--with-x=no
.else
USE_X11=Yes
LIB_DEPENDS-main=	ungif.>=5::graphics/libungif \
			jpeg.>=62::graphics/jpeg \
			png.>=2::graphics/png \
			tiff.>=35::graphics/tiff
WANTLIB-main+=		ICE SM X11 Xaw Xext Xmu Xpm Xt z
.endif

RUN_DEPENDS=		:emacs-${VERSION}:${PKGPATH}
RUN_DEPENDS-main=

PKG_ARCH-el=		*

.include <bsd.port.mk>
