# $OpenBSD: Makefile,v 1.9 2002/12/13 23:56:58 naddy Exp $

COMMENT=	"library for arbitrary precision arithmetic"

DISTNAME=	gmp-4.1.1
CATEGORIES=	devel math

HOMEPAGE=	http://www.swox.com/gmp/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# (L)GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=gmp/}

# work around optimizer bug in gcc 2.95
.if ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=	patch-* gcc-patch-*
.endif

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
# Don't try to optimize for the local CPU submodel
CONFIGURE_ARGS+= --build=${MACHINE_ARCH}-unknown-openbsd${OSrev}
CONFIGURE_ENV=	MAKEINFO="makeinfo --no-split"

post-extract:
	@rm -f ${WRKSRC}/gmp.info*

.include <bsd.port.mk>
