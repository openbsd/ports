# $OpenBSD: Makefile,v 1.13 2003/07/06 12:46:45 naddy Exp $

COMMENT=		"GNU editor: extensible, customizable, self documenting"
COMMENT-el=		"elisp sources for those who want to read/modify them"
COMMENT-leim=		"Library of Emacs Input Methods"

VERSION=		21.3
DISTNAME=		emacs-${VERSION}
FULLPKGNAME-el=		emacs-el-${VERSION}
FULLPKGNAME-leim=	emacs-leim-${VERSION}

CATEGORIES=		editors

HOMEPAGE=		http://www.gnu.org/software/emacs/

MAINTAINER=		Han Boetes <han@linux-mandrake.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNU:=emacs/}
DISTFILES=		emacs-${VERSION}.tar.gz leim-${VERSION}.tar.gz

MULTI_PACKAGES=		-el -leim

FLAVORS=		no_x11
FLAVOR?=

GCCARCH=		${MACHINE_ARCH}-unknown-openbsd${OPSYS_VER}

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS=		${GCCARCH} --with-pop
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include \
				  -I${LOCALBASE}/include/libpng" \
			LDFLAGS="${ELF_TOOLCHAIN:S/yes/-Z/:S/no//} \
				 -L${LOCALBASE}/lib"

SUBST_VARS=		GCCARCH VERSION

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+=	--with-x=no
.else
USE_X11=Yes
LIB_DEPENDS=		ungif.5::graphics/libungif \
			jpeg.62::graphics/jpeg \
			png.2::graphics/png \
			tiff.35::graphics/tiff
.endif

.if defined(PACKAGING)
.  if !empty(SUBPACKAGE)
RUN_DEPENDS=		:emacs-${VERSION}*:editors/emacs21
LIB_DEPENDS=
.  endif
.endif

.include <bsd.port.mk>
