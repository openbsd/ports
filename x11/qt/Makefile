# $OpenBSD: Makefile,v 1.17 1999/04/12 23:23:09 brad Exp $
# $FreeBSD: Makefile,v 1.33 1999/02/27 03:09:57 andreas Exp $

DISTNAME=	qt-1.42
CATEGORIES=	x11
MASTER_SITES=	ftp://ftp.troll.no/qt/source/

NEED_VERSION=	1.64

MAINTAINER=	brad@openbsd.org

.if defined(USE_MESAGL)
LIB_DEPENDS=	MesaGL:${PORTSDIR}/graphics/MesaGL \
		MesaGLU:${PORTSDIR}/graphics/MesaGL
.endif

.if ${MACHINE_ARCH} == "sparc"
BROKEN=		"Currently does not build on sparc due to g++ bug"
.endif

USE_GMAKE=	yes
USE_X11=	yes
MAKE_ENV+=	QTDIR=${WRKSRC} CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

EXAMPLES=aclock application biff connect cursor dclock desktop dirview \
	dragdrop drawdemo forever hello layout life menu movies pref \
	progress qdir qmag qwerty scrollview showimg splitter table \
	tetrix tictac timestmp tooltip validator widgets xform

post-configure:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${GMAKE} ${USE_TARGET}

do-install:
	if [ -f ${WRKSRC}/lib/libqt.a ]; then \
	 ${INSTALL_DATA} ${WRKSRC}/lib/libqt.a ${X11BASE}/lib; \
	fi
	if [ -f ${WRKSRC}/lib/libqt.so.1.42 ]; then \
	 ${INSTALL_DATA} ${WRKSRC}/lib/libqt.so.1.42 ${X11BASE}/lib; \
	fi
	${INSTALL_PROGRAM} ${WRKSRC}/bin/moc ${X11BASE}/bin
	${LDCONFIG} -m ${PREFIX}/lib
	${MKDIR} -p ${PREFIX}/include/X11/qt
	${INSTALL_DATA} ${WRKSRC}/include/* ${PREFIX}/include/X11/qt
	${INSTALL_MAN} ${WRKSRC}/man/man1/* ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/man/man3/* ${PREFIX}/man/man3
	${MKDIR} -p ${PREFIX}/share/doc/qt
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/qt
	${INSTALL_DATA} ${WRKSRC}/README.QT ${PREFIX}/share/doc/qt
	${MKDIR} -p ${PREFIX}/lib/qt/tutorial
	@${ECHO} -n "Installing tutorials:"
.for n in 1 2 3 4 5 6 7 8 9 10 11 12 13 14
	@${ECHO} -n " ${n}"
	@${INSTALL_PROGRAM} ${WRKSRC}/tutorial/t${n}/t${n} \
		${PREFIX}/lib/qt/tutorial
.endfor
	@${ECHO} "."
	${MKDIR} -p ${PREFIX}/lib/qt/examples
	@${ECHO} -n "Installing examples:"
.for f in ${EXAMPLES}
	@${ECHO} -n " ${f}"
	@${INSTALL_PROGRAM} ${WRKSRC}/examples/${f}/${f} \
	${PREFIX}/lib/qt/examples
.endfor
	@${ECHO} "."
	${INSTALL_DATA} ${WRKSRC}/examples/README ${PREFIX}/lib/qt/examples

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS)
USE_TARGET=	openbsd-g++-static
.else
USE_TARGET=	openbsd-g++-shared
.endif
