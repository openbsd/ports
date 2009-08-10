# $OpenBSD: Makefile,v 1.18 2009/08/10 06:32:43 kili Exp $

COMMENT=	interpreted language for scientific computing

VERSION=	2.1
DISTNAME=	yorick-${VERSION}.05
PKGNAME=	${DISTNAME}p0

CATEGORIES=	math devel

HOMEPAGE=	http://yorick.sourceforge.net/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=yorick/}
EXTRACT_SUFX=	.tgz

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 c m pthread-stubs xcb
USE_X11=	Yes

Y_SITE=		${PREFIX}/share/yorick
CONFIGURE_STYLE= simple
MAKE_FLAGS=	Y_SITE="${Y_SITE}"

WRKDIST=	${WRKDIR}/yorick-${VERSION}

# Some tests require X started (or DISPLAY, etc set).
REGRESS_IS_INTERACTIVE=	Yes
SETENV=env
REGRESS_TARGET=		check

post-extract:
	@find ${WRKDIST} -type d -name CVS -exec rm -rf {} \; 2>/dev/null

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
	${INSTALL_DATA} ${WRKSRC}/doc/*.{doc,tex,pdf} ${PREFIX}/share/doc/yorick
	${INSTALL_DATA} ${WRKSRC}/g/*.ps ${PREFIX}/share/doc/yorick
	${INSTALL_DATA_DIR} ${Y_SITE}
	${INSTALL_DATA_DIR} ${Y_SITE}/g
	${INSTALL_DATA_DIR} ${Y_SITE}/i
	${INSTALL_DATA_DIR} ${Y_SITE}/i0
	${INSTALL_DATA} ${WRKSRC}/g/* ${Y_SITE}/g
	${INSTALL_DATA} ${WRKSRC}/i/* ${Y_SITE}/i
	${INSTALL_DATA} ${WRKSRC}/i0/* ${Y_SITE}/i0

.include <bsd.port.mk>
