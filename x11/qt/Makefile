# $OpenBSD: Makefile,v 1.30 2000/03/08 01:27:42 kevlo Exp $
# $FreeBSD: Makefile,v 1.33 1999/02/27 03:09:57 andreas Exp $

DISTNAME=	qt-1.45
CATEGORIES=	x11
NEED_VERSION=	1.223
MASTER_SITES=	ftp://ftp.troll.no/qt/source/


MAINTAINER=	brad@openbsd.org

LIB_DEPENDS=	MesaGL.3.0:graphics/Mesa

USE_GMAKE=	Yes
USE_X11=	Yes
FAKE=           Yes
MAKE_ENV=	QTDIR="${WRKSRC}" SYS_CXX="${CXX}" SYS_CXXFLAGS="${CXXFLAGS}"

EXAMPLES=aclock application biff connect cursor dclock desktop dirview \
	dragdrop drawdemo forever hello layout life menu movies pref \
	progress qdir qmag qwerty scrollview showimg splitter table \
	tetrix tictac timestmp tooltip validator widgets xform

do-configure:
	@cd ${WRKSRC} && env ${MAKE_ENV} ${MAKE_PROGRAM} ${USE_TARGET}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/X11/qt
	${INSTALL_DATA_DIR} ${PREFIX}/lib/qt/examples
	${INSTALL_DATA_DIR} ${PREFIX}/lib/qt/tutorial
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/qt
	@if [ -f ${WRKSRC}/lib/libqt.a ]; then \
	 ${INSTALL_DATA} ${WRKSRC}/lib/libqt.a ${PREFIX}/lib; \
	fi
	@if [ -f ${WRKSRC}/lib/libqt.so.1.45 ]; then \
	 ${INSTALL_DATA} ${WRKSRC}/lib/libqt.so.1.45 ${PREFIX}/lib; \
	fi
	${INSTALL_PROGRAM} ${WRKSRC}/bin/moc ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/include/* ${PREFIX}/include/X11/qt
	${INSTALL_MAN} ${WRKSRC}/man/man1/* ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/man/man3/* ${PREFIX}/man/man3
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/qt
	${INSTALL_DATA} ${WRKSRC}/README.QT ${PREFIX}/share/doc/qt
	@echo -n "Installing tutorials:"
.for n in 1 2 3 4 5 6 7 8 9 10 11 12 13 14
	@echo -n " ${n}"
	@${INSTALL_PROGRAM} ${WRKSRC}/tutorial/t${n}/t${n} ${PREFIX}/lib/qt/tutorial
.endfor
	@echo "."
	@echo -n "Installing examples:"
.for f in ${EXAMPLES}
	@echo -n " ${f}"
	@${INSTALL_PROGRAM} ${WRKSRC}/examples/${f}/${f} ${PREFIX}/lib/qt/examples
.endfor
	@echo "."
	${INSTALL_DATA} ${WRKSRC}/examples/README ${PREFIX}/lib/qt/examples
	@${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:U} == YES
USE_TARGET=	openbsd-g++-static
.else
USE_TARGET=	openbsd-g++-shared
.endif
