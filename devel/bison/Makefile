# $OpenBSD: Makefile,v 1.34 2004/04/06 03:12:19 brad Exp $

COMMENT=	"GNU parser generator"

DISTNAME=       bison-1.35
PKGNAME=	${DISTNAME}p1
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=bison/}

HOMEPAGE=	http://www.gnu.org/software/bison/

MODULES=	gettext

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV=	MAKEINFOFLAGS="--no-split"

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
