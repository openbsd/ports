# $OpenBSD: Makefile,v 1.24 2013/10/11 08:39:25 espie Exp $

# Memory hog, stuck for days on the same file during build.
NOT_FOR_ARCHS=	sh

COMMENT=	interpreted language for scientific computing

VERSION=	2.1.06
DISTNAME=	yorick-${VERSION}
REVISION =	0

CATEGORIES=	math devel

HOMEPAGE=	http://yorick.sourceforge.net/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=yorick/}
EXTRACT_SUFX=	.tgz

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	X11 c m
USE_GROFF =	Yes

Y_SITE=		${PREFIX}/share/yorick
CONFIGURE_STYLE= simple
MAKE_FLAGS=	Y_SITE="${Y_SITE}"

WRKDIST=	${WRKDIR}/yorick-${VERSION:R}

# Some tests require X started (or DISPLAY, etc set).
TEST_IS_INTERACTIVE=	Yes
SETENV=env
TEST_TARGET=		check

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
