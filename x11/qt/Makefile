# $OpenBSD: Makefile,v 1.72 2006/09/18 10:21:49 espie Exp $
# $FreeBSD: Makefile,v 1.33 1999/02/27 03:09:57 andreas Exp $

COMMENT=	"C++ X11 GUI toolkit"
COMMENT-examples="examples and tutorial for qt"
COMMENT-html=	"off-line html documentation for qt"

VERSION=	1.45
DISTNAME=	qt-${VERSION}
PKGNAME-examples=qt-examples-${VERSION}
PKGNAME-html=	qt-html-${VERSION}
PKGNAME=	qt-${VERSION}p1
CATEGORIES=	x11
MASTER_SITES=	ftp://ftp.troll.no/qt/source/
SHARED_LIBS=	qt	10.0 \
		qimgio	2.0

HOMEPAGE=	http://www.trolltech.com/products/qt/

# for the qt image extension
BUILD_DEPENDS=	::graphics/jpeg \
		::graphics/png

PERMIT_PACKAGE_CDROM=	"Restrictive license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"Restrictive license"
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c m stdc++

MAKE_FLAGS=	QT_VER_MAJ=${LIBqt_VERSION:R} QT_VER_MIN=${LIBqt_VERSION:E} \
    QIMGIO_VER_MAJ=${LIBqimgio_VERSION:R} QIMGIO_VER_MIN=${LIBqimgio_VERSION:E}

USE_X11=	Yes
USE_GMAKE=	Yes
MAKE_ENV=	QTDIR="${WRKSRC}" SYS_CXX="${CXX}" SYS_CXXFLAGS="${CXXFLAGS}"

MULTI_PACKAGES=	-examples -html
SUBPACKAGE?=

.if defined(PACKAGING)
.  if ${SUBPACKAGE} == "-examples"
LIB_DEPENDS+=	lib/qt/qt.>=1::x11/qt
.  elif ${SUBPACKAGE} == "-html"
PKG_ARCH=	*
WANTLIB=
.  endif
.endif

NO_REGRESS=	Yes

QT_INCDIR=	${PREFIX}/include/X11/qt
QT_LIBDIR=	${PREFIX}/lib/qt
QT_MANDIR=	${QT_LIBDIR}/man
QT_EXAMPLES=	${QT_LIBDIR}/examples
QT_TUTORIAL=	${QT_LIBDIR}/tutorial
QT_DOC=		${PREFIX}/share/doc/qt

# for manpages in MESSAGE
SUBST_VARS=	QT_LIBDIR QT_DOC

IMAGEIODIR=	${WRKSRC}/extensions/imageio/src

DOCS=	ANNOUNCE FAQ LICENSE README README.QT changes-1.40 changes-1.41 \
	changes-1.42 changes-1.43 changes-1.44 changes-1.45

pre-configure:
	@cd ${WRKSRC}/configs; for i in openbsd-*; do \
	    mv -f $$i $$i.bak && \
		sed -e s,/usr/local,${LOCALBASE}, \
		-e s,/usr/X11R6,${X11BASE}, <$$i.bak >$$i; \
	done

do-configure:
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE} ${USE_TARGET}

post-configure:
	@cd ${WRKSRC} && cp -R examples examples-src
	@cd ${WRKSRC} && cp -R tutorial tutorial-src

VMEM_WARNING=	Yes

post-build:
	@cd ${IMAGEIODIR} && \
		${SETENV} ${MAKE_ENV} SYS_CXXFLAGS='-I$(LOCALBASE)/include/libpng -I$(LOCALBASE)/include ${CXXFLAGS}' ${MAKE} ${MAKE_FLAGS}

do-install:
	${INSTALL_DATA_DIR} ${QT_INCDIR}
	${INSTALL_DATA_DIR} ${QT_MANDIR}/man1
	${INSTALL_DATA_DIR} ${QT_MANDIR}/man3
	${INSTALL_DATA_DIR} ${QT_EXAMPLES}
	${INSTALL_DATA_DIR} ${QT_TUTORIAL}
	${INSTALL_DATA_DIR} ${QT_DOC}/html
	${INSTALL_DATA_DIR} ${PREFIX}/lib/qt
	@if [ -f ${WRKBUILD}/lib/libqt.a ]; then \
	 ${INSTALL_DATA} ${WRKBUILD}/lib/libqt.a ${PREFIX}/lib/qt; \
	fi
	@if [ -f ${WRKBUILD}/lib/libqt.so.${LIBqt_VERSION} ]; then \
	 ${INSTALL_DATA} ${WRKBUILD}/lib/libqt.so.${LIBqt_VERSION} ${PREFIX}/lib/qt; \
	 ln -sf qt/libqt.so.${LIBqt_VERSION} ${PREFIX}/lib; \
	fi
	@if [ -f ${WRKBUILD}/lib/libqimgio.a ]; then \
	 ${INSTALL_DATA} ${WRKBUILD}/lib/libqimgio.a ${PREFIX}/lib; \
	fi
	@if [ -f ${WRKBUILD}/lib/libqimgio.so.${LIBqimgio_VERSION} ]; then \
	 ${INSTALL_DATA} ${WRKBUILD}/lib/libqimgio.so.${LIBqimgio_VERSION} ${PREFIX}/lib; \
	fi
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/moc ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/include/* ${QT_INCDIR}
	${INSTALL_MAN} ${WRKSRC}/man/man1/* ${QT_MANDIR}/man1
	@for i in ${WRKSRC}/man/man3/*; do \
	  j=$${i%qt}; \
	  sed -e 's,\.3qt,\.3,g' <$$i >$$j && \
	  	${INSTALL_MAN} $$j ${QT_MANDIR}/man3; \
	done
	cp -R ${WRKSRC}/examples-src/* ${QT_EXAMPLES}
	@cd ${WRKSRC}/examples; for i in *; do \
	if [ -x $$i/$$i ]; then \
	    ${INSTALL_PROGRAM} $$i/$$i ${QT_EXAMPLES}/$$i; \
	fi; done
	cp -R ${WRKSRC}/tutorial-src/* ${QT_TUTORIAL}
	@cd ${WRKSRC}/tutorial; for i in *; do \
	if [ -x $$i/$$i ]; then \
	    ${INSTALL_PROGRAM} $$i/$$i ${QT_TUTORIAL}/$$i; \
	fi; done
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${QT_DOC}
	cp -R ${WRKSRC}/html/* ${QT_DOC}/html

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
USE_TARGET=	openbsd-g++-static
.else
USE_TARGET=	openbsd-g++-shared
.endif
