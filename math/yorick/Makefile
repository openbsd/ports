# $OpenBSD: Makefile,v 1.13 2002/12/29 19:43:50 fgsch Exp $

COMMENT=	"interpreted language for scientific computing"

VERSION=	1.5
DISTNAME=	yorick-${VERSION}.08
CATEGORIES=	math devel
MASTER_SITES=	ftp://ftp-icf.llnl.gov/pub/Yorick/
EXTRACT_SUFX=	.tgz

HOMEPAGE=	ftp://ftp-icf.llnl.gov/pub/Yorick/doc/index.html

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes

CONFIGURE_STYLE= simple
Y_DIR=		${PREFIX}/share/yorick

WRKDIST=	${WRKDIR}/yorick-${VERSION}

# Some tests require X started (or DISPLAY, etc set).
REGRESS_IS_INTERACTIVE=	Yes
SETENV=env
REGRESS_TARGET=		check

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/yorick/yorick ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/gist/gist ${PREFIX}/bin
	@find ${WRKSRC} -name \*.h -exec \
		${INSTALL_DATA} {} ${PREFIX}/include \;
	${INSTALL_DATA} ${WRKSRC}/i0/* ${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/yorick/libyor.a ${PREFIX}/lib
	${INSTALL_MAN} ${WRKSRC}/doc/yorick.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/gist.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/yorick
	${INSTALL_DATA} ${WRKSRC}/doc/*.{doc,tex,ps,pdf} ${PREFIX}/share/doc/yorick
	${INSTALL_DATA_DIR} ${Y_DIR}
	${INSTALL_DATA_DIR} ${Y_DIR}/g
	${INSTALL_DATA_DIR} ${Y_DIR}/i
	${INSTALL_DATA} ${WRKSRC}/g/* ${Y_DIR}/g
	${INSTALL_DATA} ${WRKSRC}/i/* ${Y_DIR}/i

.include <bsd.port.mk>
