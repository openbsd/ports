# $OpenBSD: Makefile,v 1.3 2001/03/16 16:30:01 espie Exp $

COMMENT= 		"GNU versions of common file management utilities"
COMMENT-ls=		"colorized GNU `ls'"

V=			4.0
DISTNAME=		fileutils-$V
CATEGORIES=		misc
NEED_VERSION=		1.361

PKGNAME-ls=		fileutils-ls-$V

MAINTAINER=		David Lebel <lebel@lebel.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	fileutils

LIB_DEPENDS=		intl.1::devel/gettext

SEPARATE_BUILD=		concurrent
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
			CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"
CONFIGURE_ARGS=		--program-prefix=g

MULTI_PACKAGES=		-ls

.include <bsd.port.mk>
