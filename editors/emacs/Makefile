# $OpenBSD: Makefile,v 1.30 2003/07/06 17:13:02 naddy Exp $

COMMENT=	"GNU editor"
COMMENT-el=	"elisp sources for those who want to read/modify them"
COMMENT-leim=	"Library of Emacs Input Methods"

VER=		20.7
DISTNAME=	emacs-${VER}
FULLPKGNAME-el=	emacs-el-${VER}
FULLPKGNAME-leim= emacs-leim-${VER}

CATEGORIES=	editors

MAINTAINER=	Matthew Economou <xenophon@irtnog.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=emacs/}
DISTFILES=	emacs-${VER}.tar.gz leim-${VER}.tar.gz

MULTI_PACKAGES=	-el -leim
SUBPACKAGE?=

FLAVORS=	no_x11
FLAVOR?=

CONFIGURE_STYLE=gnu dest
CONFIGURE_ARGS=	${GCCARCH} --with-pop
CONFIGURE_ENV=	LDFLAGS="${ELF_TOOLCHAIN:S/yes/-Z/:S/no//}"

GCCARCH=	${MACHINE_ARCH}-unknown-openbsd${OPSYS_VER}

SUBST_VARS=	GCCARCH VER

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+= --without-x
.else
USE_X11=	Yes
CONFIGURE_ARGS+= --with-x-toolkit
.endif

.if defined(PACKAGING)
.  if !empty(SUBPACKAGE)
RUN_DEPENDS=	:emacs-${VER}*:editors/emacs
.  endif
.endif

.include <bsd.port.mk>
