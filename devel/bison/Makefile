# $OpenBSD: Makefile,v 1.25 2002/01/26 00:15:06 brad Exp $

COMMENT=	"GNU parser generator"

DISTNAME=       bison-1.32
CATEGORIES=	devel
NEED_VERSION=	1.500
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= bison

HOMEPAGE=	http://www.gnu.org/software/bison/

MODULES=	gettext

MAINTAINER=	David Leonard <d@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV=	MAKEINFOFLAGS="--no-split"

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
