# $OpenBSD: Makefile,v 1.6 2009/01/18 23:19:15 jasper Exp $

COMMENT=	GNU getopt(1) utility

DISTNAME=	getopt-1.1.4
PKGNAME=	gnu${DISTNAME}p1
CATEGORIES=	misc

HOMEPAGE=      http://software.frodo.looijaard.name/getopt/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/files/

WANTLIB=	c

MODULES=	devel/gettext

USE_GMAKE=	Yes
MAKE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -lintl -liconv" \
		CC="${CC}"

NO_REGRESS=	Yes

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
