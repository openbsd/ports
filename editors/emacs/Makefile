# $OpenBSD: Makefile,v 1.29 2003/07/06 15:27:52 naddy Exp $

COMMENT=	"GNU editor"

VER=		20.7
DISTNAME=	emacs-${VER}
CATEGORIES=	editors

MAINTAINER=	Matthew Economou <xenophon@irtnog.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=emacs/}

FLAVORS=	no_x11
FLAVOR?=

CONFIGURE_STYLE=gnu dest
CONFIGURE_ARGS=	${GCCARCH} --with-pop
CONFIGURE_ENV=	LDFLAGS="${ELF_TOOLCHAIN:S/yes/-Z/:S/no//}"

GCCARCH=	${MACHINE_ARCH}-unknown-openbsd${OPSYS_VER}

SUBST_VARS=	GCCARCH VER

.if ${FLAVOR:L} == "no_x11"
CONFIGURE_ARGS+= --without-x
.else
CONFIGURE_ARGS+= --with-x-toolkit
.endif

.include <bsd.port.mk>
