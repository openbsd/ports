# $OpenBSD: Makefile,v 1.25 2019/07/12 20:48:58 sthen Exp $

COMMENT=		automatically create timetables

DISTNAME=		fet-5.14.1
REVISION=		5
CATEGORIES=		productivity x11

HOMEPAGE=		http://www.lalescu.ro/liviu/fet/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += Qt3Support QtGui QtNetwork QtSql QtXml c m pthread
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += ICE SM X11 Xext Xi Xinerama Xrender fontconfig freetype iconv intl

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=		${HOMEPAGE}/download/ \
			http://timetabling.de/download/
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/qmake \
			x11/qt4

PORTHOME=		${WRKDIR}

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/fet ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fet
	${INSTALL_DATA} ${WRKSRC}/doc/algorithm/* \
		${PREFIX}/share/doc/fet 
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/fet
	cd ${WRKSRC}/examples/ && umask 022 && pax -rw . \
		${PREFIX}/share/examples/fet
	${INSTALL_MAN} ${WRKSRC}/doc/fet.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
