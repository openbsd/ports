# $OpenBSD: Makefile,v 1.13 2003/02/25 14:35:43 brad Exp $

COMMENT= 		"GNU versions of common file management utilities"
COMMENT-ls=		"colorized GNU 'ls'"

V=			4.1
DISTNAME=		fileutils-$V
CATEGORIES=		misc

PKGNAME=		${DISTNAME}p1
PKGNAME-ls=		gnuls-$V

MAINTAINER=		David Lebel <lebel@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNU:=fileutils/}

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
