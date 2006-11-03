# $OpenBSD: Makefile,v 1.1.1.1 2006/11/03 13:25:02 bernd Exp $

COMMENT=	"GNU getopt(1) utility"

DISTNAME=	getopt-1.1.4
PKGNAME=	${DISTNAME:S/getopt/gnugetopt/}
CATEGORIES=	misc

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://software.frodo.looijaard.name/getopt/files/

WANTLIB=	c

MODULES=	devel/gettext

USE_GMAKE=	Yes
MAKE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -lintl -liconv"

NO_REGRESS=	Yes

do-install:
	cd ${WRKSRC} && sed -e 's,/usr/local,${LOCALBASE},g' \
		< ${WRKSRC}/getopt.1 > ${WRKSRC}/getopt.1.fixed
	${INSTALL_PROGRAM} ${WRKBUILD}/getopt ${PREFIX}/bin/gnugetopt
	${INSTALL_MAN} ${WRKBUILD}/getopt.1.fixed ${PREFIX}/man/man1/gnugetopt.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnugetopt
	${INSTALL_DATA} ${WRKBUILD}/getopt-parse.* \
		${PREFIX}/share/examples/gnugetopt

.include <bsd.port.mk>
