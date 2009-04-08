# $OpenBSD: Makefile,v 1.22 2009/04/08 16:27:12 ajacoutot Exp $

COMMENT-main= 		GNU versions of common file management utilities
COMMENT-ls=		colorized GNU 'ls'

V=			4.1
DISTNAME=		fileutils-$V
CATEGORIES=		misc

PKGNAME-main=		${DISTNAME}p4
PKGNAME-ls=		gnuls-$Vp1

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c

MASTER_SITES=		${MASTER_SITE_GNU:=fileutils/}

MODULES=		devel/gettext

SEPARATE_BUILD=		concurrent
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
			CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"
CONFIGURE_ARGS=		--program-prefix=g

MULTI_PACKAGES=		-main -ls

.include <bsd.port.mk>
