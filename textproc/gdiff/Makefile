# $OpenBSD: Makefile,v 1.4 2003/07/24 14:56:09 naddy Exp $

COMMENT=	"GNU versions of the diff utilities"

VERSION=	2.8
DISTNAME=	diffutils-${VERSION}
PKGNAME=	gdiff-${VERSION}
CATEGORIES=	textproc
HOMEPAGE=	http://www.gnu.org/software/diffutils/

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=diffutils/}

MODULES=	gettext

# work around optimizer bug in gcc 2.95
.if ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=	gcc-patch-* patch-*
.endif

SEPARATE_BUILD=	simple
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--program-prefix=g
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		MAKEINFO="makeinfo --no-split"

.include <bsd.port.mk>
