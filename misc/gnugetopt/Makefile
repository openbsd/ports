# $OpenBSD: Makefile,v 1.13 2014/01/01 20:46:28 naddy Exp $

COMMENT=	GNU getopt(1) utility

DISTNAME=	getopt-1.1.4
PKGNAME=	gnu${DISTNAME}
REVISION=	2
CATEGORIES=	misc

HOMEPAGE=	http://software.frodo.looijaard.name/getopt/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}/files/

WANTLIB=	c

MODULES=	devel/gettext

USE_GMAKE=	Yes
MAKE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LIBS="-lintl -liconv" \
		CC="${CC}"

NO_TEST=	Yes

do-install:
	cd ${WRKSRC} && sed -e 's,/usr/local,${LOCALBASE},g' \
		< ${WRKSRC}/getopt.1 > ${WRKSRC}/getopt.1.fixed
	${INSTALL_PROGRAM} ${WRKBUILD}/getopt ${PREFIX}/bin/gnugetopt
	${INSTALL_MAN} ${WRKBUILD}/getopt.1.fixed ${PREFIX}/man/man1/gnugetopt.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnugetopt
	${INSTALL_DATA} ${WRKBUILD}/getopt-parse.bash \
		${PREFIX}/share/examples/gnugetopt
	${INSTALL_DATA} ${WRKBUILD}/getopt-parse.tcsh \
		${PREFIX}/share/examples/gnugetopt

.include <bsd.port.mk>
