# $OpenBSD: Makefile,v 1.23 2001/10/25 01:58:54 brad Exp $

COMMENT=	"GNU parser generator"

DISTNAME=       bison-1.28
CATEGORIES=	devel
NEED_VERSION=	1.413
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= bison

HOMEPAGE=	http://www.gnu.org/software/bison/

MODULES=	gettext

MAINTAINER=	David Leonard <d@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -lintl"

.include <bsd.port.mk>
