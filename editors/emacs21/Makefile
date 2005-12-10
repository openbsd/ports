# $OpenBSD: Makefile,v 1.29 2005/12/10 11:57:40 aanriot Exp $

.if ${MACHINE_ARCH} == "hppa"
BROKEN=			"hangs indefinitely until machine panics/hangs"
.endif

COMMENT=		"GNU editor: extensible, customizable, self documenting"
COMMENT-el=		"elisp sources for those who want to read/modify them"
COMMENT-leim=		"Library of Emacs Input Methods"

VERSION=		21.4
DISTNAME=		emacs-${VERSION}
FULLPKGNAME-el=		emacs-el-${VERSION}
FULLPKGNAME-leim=	emacs-leim-${VERSION}

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

MULTI_PACKAGES=		-el -leim
SUBPACKAGE?=

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

myWANTLIB=		c m ncurses ossaudio
.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+=	--with-x=no
.else
USE_X11=Yes
myLIB_DEPENDS=		ungif.5::graphics/libungif \
			jpeg.62::graphics/jpeg \
			png.2::graphics/png \
			tiff.35::graphics/tiff
myWANTLIB+=		ICE SM X11 Xaw Xext Xmu Xpm Xt z
.endif

.if defined(PACKAGING)
.  if !empty(SUBPACKAGE)
RUN_DEPENDS=		:emacs-${VERSION}*:editors/emacs21
.  else
LIB_DEPENDS=		$(myLIB_DEPENDS)
WANTLIB=		$(myWANTLIB)
.endif
.  if ${SUBPACKAGE} == "-el"
PKG_ARCH=		*
.  endif
.else
LIB_DEPENDS=		$(myLIB_DEPENDS)
WANTLIB=		$(myWANTLIB)
.endif

.include <bsd.port.mk>
