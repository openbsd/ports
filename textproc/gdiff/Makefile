# $OpenBSD: Makefile,v 1.16 2013/03/11 11:42:41 espie Exp $

COMMENT=	GNU versions of the diff utilities

VERSION=	2.8.1
DISTNAME=	diffutils-${VERSION}
PKGNAME=	gdiff-${VERSION}
REVISION =	0
CATEGORIES=	textproc
HOMEPAGE=	http://www.gnu.org/software/diffutils/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c 

MASTER_SITES=	${MASTER_SITE_GNU:=diffutils/}

MODULES=	devel/gettext

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--program-prefix=g
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config
USE_GROFF =	Yes

.include <bsd.port.mk>
