# $OpenBSD: Makefile,v 1.12 2007/09/15 20:59:38 merdely Exp $

COMMENT=	GNU versions of the diff utilities

VERSION=	2.8.1
DISTNAME=	diffutils-${VERSION}
PKGNAME=	gdiff-${VERSION}p0
CATEGORIES=	textproc
HOMEPAGE=	http://www.gnu.org/software/diffutils/

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
WANTLIB=		c 

MASTER_SITES=	${MASTER_SITE_GNU:=diffutils/}

MODULES=	devel/gettext

SEPARATE_BUILD=	simple
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--program-prefix=g
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config

.include <bsd.port.mk>
