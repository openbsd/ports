# $OpenBSD: Makefile,v 1.7 2002/10/13 22:09:25 naddy Exp $

COMMENT=	library for arbitrary precision arithmetic

DISTNAME=	gmp-3.1.1
CATEGORIES=	devel math

MASTER_SITES=	${MASTER_SITE_GNU:=gmp/}

HOMEPAGE=	http://www.swox.com/gmp/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

# (L)GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# work around optimizer bug in gcc 2.95
.if ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=	patch-* gcc-patch-*
.endif

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
CONFIGURE_ENV=	MAKEINFO="makeinfo --no-split"

post-extract:
	@rm -f ${WRKSRC}/gmp.info*

post-build:
	ranlib ${WRKBUILD}/.libs/libgmp.a

.include <bsd.port.mk>
