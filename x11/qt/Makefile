# $OpenBSD: Makefile,v 1.26 2000/01/12 05:19:49 brad Exp $
# $FreeBSD: Makefile,v 1.33 1999/02/27 03:09:57 andreas Exp $

DISTNAME=	qt-1.44
CATEGORIES=	x11
MASTER_SITES=	ftp://ftp.troll.no/qt/source/

NEED_VERSION=	1.96

MAINTAINER=	brad@openbsd.org

LIB_DEPENDS=	MesaGL.3.0:${PORTSDIR}/graphics/Mesa

USE_GMAKE=	yes
USE_X11=	yes
MAKE_ENV=	QTDIR="${WRKSRC}" SYS_CXX="${CXX}" SYS_CXXFLAGS="${CXXFLAGS}"

EXAMPLES=aclock application biff connect cursor dclock desktop dirview \
	dragdrop drawdemo forever hello layout life menu movies pref \
	progress qdir qmag qwerty scrollview showimg splitter table \
	tetrix tictac timestmp tooltip validator widgets xform

post-configure:
	@cd ${WRKSRC} && env ${MAKE_ENV} ${MAKE_PROGRAM} ${USE_TARGET}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/X11/qt
	${INSTALL_DATA_DIR} ${PREFIX}/lib/qt/examples
	${INSTALL_DATA_DIR} ${PREFIX}/lib/qt/tutorial
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/qt
	@if [ -f ${WRKSRC}/lib/libqt.a ]; then \
	 ${INSTALL_DATA} ${WRKSRC}/lib/libqt.a ${X11BASE}/lib; \
	fi
	@if [ -f ${WRKSRC}/lib/libqt.so.1.44 ]; then \
	 ${INSTALL_DATA} ${WRKSRC}/lib/libqt.so.1.44 ${X11BASE}/lib; \
	fi
	${INSTALL_PROGRAM} ${WRKSRC}/bin/moc ${X11BASE}/bin
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
