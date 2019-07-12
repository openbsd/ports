# $OpenBSD: Makefile,v 1.18 2019/07/12 20:47:50 sthen Exp $

COMMENT=	GNU getopt(1) utility

DISTNAME=	getopt-1.1.6
PKGNAME=	gnu${DISTNAME}
REVISION=	2
CATEGORIES=	misc

HOMEPAGE=	http://software.frodo.looijaard.name/getopt/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://frodo.looijaard.name/system/files/software/getopt/

WANTLIB=	c iconv intl

BUILD_DEPENDS=	devel/gettext,-tools
LIB_DEPENDS=	devel/gettext,-runtime

USE_GMAKE=	Yes
MAKE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LIBS="-lintl -liconv" \
		CC="${CC}"

post-extract:
	perl -pi -e 's/getopt/gnugetopt/g' ${WRKSRC}/getopt-*.{bash,tcsh}

do-test:
	cd ${WRKSRC} && ./run-tests

.include <bsd.port.mk>
