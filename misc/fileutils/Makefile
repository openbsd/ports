# $OpenBSD: Makefile,v 1.16 2004/09/15 00:06:59 pvalchev Exp $

COMMENT= 		"GNU versions of common file management utilities"
COMMENT-ls=		"colorized GNU 'ls'"

V=			4.1
DISTNAME=		fileutils-$V
CATEGORIES=		misc

PKGNAME=		${DISTNAME}p1
PKGNAME-ls=		gnuls-$V

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNU:=fileutils/}

MODULES=		devel/gettext

SEPARATE_BUILD=		concurrent
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
			CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"
CONFIGURE_ARGS=		--program-prefix=g

MULTI_PACKAGES=		-ls

.include <bsd.port.mk>
