# $OpenBSD: Makefile,v 1.16 2007/09/15 18:44:37 steven Exp $

COMMENT=	interpreted language for scientific computing

VERSION=	1.5
DISTNAME=	yorick-${VERSION}.08
PKGNAME=	${DISTNAME}p1
CATEGORIES=	math devel
MASTER_SITES=	ftp://ftp-icf.llnl.gov/pub/Yorick/
EXTRACT_SUFX=	.tgz

HOMEPAGE=	ftp://ftp-icf.llnl.gov/pub/Yorick/doc/index.html

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 c m

USE_X11=	Yes

Y_SITE=		${PREFIX}/share/yorick
CONFIGURE_STYLE= simple
MAKE_FLAGS=	Y_SITE="${Y_SITE}"

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
	${INSTALL_DATA_DIR} ${Y_SITE}
	${INSTALL_DATA_DIR} ${Y_SITE}/g
	${INSTALL_DATA_DIR} ${Y_SITE}/i
	${INSTALL_DATA_DIR} ${Y_SITE}/i0
	${INSTALL_DATA} ${WRKSRC}/g/* ${Y_SITE}/g
	${INSTALL_DATA} ${WRKSRC}/i/* ${Y_SITE}/i
	${INSTALL_DATA} ${WRKSRC}/i0/* ${Y_SITE}/i0

.include <bsd.port.mk>
