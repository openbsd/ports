# $OpenBSD: Makefile,v 1.21 2002/08/26 02:55:09 pvalchev Exp $

COMMENT=	"GNU utility to indent C source files"

DISTNAME=	indent-2.2.8
CATEGORIES=	devel

HOMEPAGE=	http://www.gnu.org/software/indent/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=indent/}

MODULES=	gettext

NO_REGRESS=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--program-prefix="g" --without-included-gettext
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
MAKE_ARGS=	BERKELEY_DEFAULTS=1

.include <bsd.port.mk>
