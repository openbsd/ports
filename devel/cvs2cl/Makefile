COMMENT=	generate GNU-style ChangeLogs from CVS repositories

V=		2.73
DISTNAME=	cvs2cl-${V}
DISTFILES=	cvs2cl-${V}{00ebb0d0afcebe4fb334794a386a178e8e08be15/cvs2cl}.pl
CATEGORIES=     devel
HOMEPAGE=	http://www.red-bean.com/cvs2cl/

# GPL
PERMIT_PACKAGE=	Yes

WRKDIST=	${WRKDIR}
SITES=		https://code.librehq.com/kfogel/cvs2cl/-/raw/

NO_TEST=	Yes
PKG_ARCH=	*

do-extract:
	cp ${FULLDISTDIR}/cvs2cl-${V}.pl ${WRKSRC}/cvs2cl.pl

do-build:
	pod2man ${WRKSRC}/cvs2cl.pl ${WRKSRC}/cvs2cl.1

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/cvs2cl.pl ${PREFIX}/bin/cvs2cl
	${INSTALL_MAN} ${WRKSRC}/cvs2cl.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
