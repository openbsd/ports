# $OpenBSD: Makefile,v 1.10 2002/03/23 19:52:08 lebel Exp $

COMMENT= 		"GNU versions of common file management utilities"
COMMENT-ls=		"colorized GNU 'ls'"

V=			4.1
DISTNAME=		fileutils-$V
CATEGORIES=		misc
NEED_VERSION=		1.460

PKGNAME-ls=		gnuls-$V

MAINTAINER=		David Lebel <lebel@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	fileutils

MODULES=		gettext

# XXX workaround gcc bugs on sparc64
.if ${MACHINE_ARCH:Msparc64}
PATCH_LIST=		gcc-* patch-*
.endif

SEPARATE_BUILD=		concurrent
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
			CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"
CONFIGURE_ARGS=		--program-prefix=g

MULTI_PACKAGES=		-ls

.include <bsd.port.mk>
