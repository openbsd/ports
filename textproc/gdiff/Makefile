# $OpenBSD: Makefile,v 1.1.1.1 2003/07/22 17:44:39 pvalchev Exp $

COMMENT=	"GNU versions of the diff utilities"

VERSION=	2.8
DISTNAME=	diffutils-${VERSION}
PKGNAME=	gdiff-${VERSION}
CATEGORIES=	textproc
HOMEPAGE=	http://www.gnu.org/software/diffutils/

# GNU
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=diffutils/}

USE_GMAKE=	Yes
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--program-prefix=g
CONFIGURE_ENV=	MAKEINFO="makeinfo --no-split"

.include <bsd.port.mk>
