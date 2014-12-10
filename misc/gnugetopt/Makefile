# $OpenBSD: Makefile,v 1.14 2014/12/10 20:46:57 rpe Exp $

COMMENT=	GNU getopt(1) utility

DISTNAME=	getopt-1.1.6
PKGNAME=	gnu${DISTNAME}
CATEGORIES=	misc

HOMEPAGE=	http://software.frodo.looijaard.name/getopt/

MAINTAINER=	Robert Peichaer <rpe@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://frodo.looijaard.name/system/files/software/getopt/

WANTLIB=	c

MODULES=	devel/gettext

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
