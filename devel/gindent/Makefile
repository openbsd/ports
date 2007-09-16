# $OpenBSD: Makefile,v 1.26 2007/09/16 02:52:59 merdely Exp $

COMMENT=	GNU utility to indent C source files

DISTNAME=	indent-2.2.8
PKGNAME=	g${DISTNAME}
CATEGORIES=	devel

HOMEPAGE=	http://www.gnu.org/software/indent/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	${MASTER_SITE_GNU:=indent/}

MODULES=	devel/gettext

NO_REGRESS=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--program-prefix="g" --without-included-gettext
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config
MAKE_ARGS=	BERKELEY_DEFAULTS=1

.include <bsd.port.mk>
