# $OpenBSD: Makefile,v 1.42 2000/06/23 09:45:14 brad Exp $
# $FreeBSD: Makefile,v 1.33 1999/02/27 03:09:57 andreas Exp $

DISTNAME=	qt-1.45
CATEGORIES=	x11
NEED_VERSION=	1.301
MASTER_SITES=	ftp://ftp.troll.no/qt/source/

HOMEPAGE=	http://www.trolltech.com/products/qt/

# for the qt image extension
BUILD_DEPENDS=	${PREFIX}/include/jpeglib.h::graphics/jpeg

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=
PERMIT_PACKAGE_FTP=
PERMIT_DISTFILES_CDROM=
PERMIT_DISTFILES_FTP=

MULTI_PACKAGES=-examples -html

SUBPACKAGE?=

USE_GMAKE=	Yes
MAKE_ENV=	QTDIR="${WRKSRC}" SYS_CXX="${CXX}" SYS_CXXFLAGS="${CXXFLAGS}"
MAKE_FLAGS=	VER_MAJ="1" VER_MIN="45"

QT_INCDIR=	${PREFIX}/include/X11/qt
QT_LIBDIR=	${PREFIX}/lib/qt
QT_MANDIR=	${QT_LIBDIR}/man
QT_EXAMPLES=	${QT_LIBDIR}/examples
QT_TUTORIAL=	${QT_LIBDIR}/tutorial
QT_DOC=		${PREFIX}/share/doc/qt

# for manpages in MESSAGE
SUBST_VARS=	QT_LIBDIR

IMAGEIODIR=	${WRKSRC}/extensions/imageio/src

post-patch:
	@cd ${WRKSRC} && cp -R examples examples-src
	@cd ${WRKSRC} && cp -R tutorial tutorial-src

do-configure:
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE} ${USE_TARGET}

post-build:
	@cd ${IMAGEIODIR} && \
		${SETENV} ${MAKE_ENV} SYS_CXXFLAGS='-I$(LOCALBASE)/include ${CXXFLAGS}' ${MAKE} ${MAKE_FLAGS}

do-install:
	${INSTALL_DATA_DIR} ${QT_INCDIR}
	${INSTALL_DATA_DIR} ${QT_MANDIR}/man1
	${INSTALL_DATA_DIR} ${QT_MANDIR}/man3
	${INSTALL_DATA_DIR} ${QT_EXAMPLES}/bin
	${INSTALL_DATA_DIR} ${QT_EXAMPLES}/src
	${INSTALL_DATA_DIR} ${QT_TUTORIAL}/bin
	${INSTALL_DATA_DIR} ${QT_TUTORIAL}/src
	${INSTALL_DATA_DIR} ${QT_DOC}/html
	@if [ -f ${WRKBUILD}/lib/libqt.a ]; then \
	 ${INSTALL_DATA} ${WRKBUILD}/lib/libqt.a ${PREFIX}/lib; \
	fi
	@if [ -f ${WRKBUILD}/lib/libqt.so.1.45 ]; then \
	 ${INSTALL_DATA} ${WRKBUILD}/lib/libqt.so.1.45 ${PREFIX}/lib; \
	fi
	@if [ -f ${WRKBUILD}/lib/libqimgio.a ]; then \
	 ${INSTALL_DATA} ${WRKBUILD}/lib/libqimgio.a ${PREFIX}/lib; \
	fi
	@if [ -f ${WRKBUILD}/lib/libqimgio.so.1.45 ]; then \
	 ${INSTALL_DATA} ${WRKBUILD}/lib/libqimgio.so.1.45 ${PREFIX}/lib; \
	fi
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/moc ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/include/* ${QT_INCDIR}
	${INSTALL_MAN} ${WRKSRC}/man/man1/* ${QT_MANDIR}/man1
	@for i in ${WRKSRC}/man/man3/*; do \
	  j=$${i%qt}; \
	  sed -e 's,\.3qt,\.3,g' <$$i >$$j && \
	  	${INSTALL_MAN} $$j ${QT_MANDIR}/man3; \
	done
	cp -R ${WRKSRC}/examples-src/* ${QT_EXAMPLES}/src
	@cd ${WRKSRC}/examples; for i in *; do \
	if [ -x $$i/$$i ]; then \
	    ${INSTALL_PROGRAM} $$i/$$i ${QT_EXAMPLES}/bin; \
	fi; done
	cp -R ${WRKSRC}/tutorial-src/* ${QT_TUTORIAL}/src
	@cd ${WRKSRC}/tutorial; for i in *; do \
	if [ -x $$i/$$i ]; then \
	    ${INSTALL_PROGRAM} $$i/$$i ${QT_TUTORIAL}/bin; \
	fi; done
	cd ${WRKSRC}; ${INSTALL_DATA} ANNOUNCE FAQ LICENSE README \
	    README.QT changes-1.40 changes-1.41 changes-1.42 changes-1.43 \
	    changes-1.44 changes-1.45 ${QT_DOC}
	cp -R ${WRKSRC}/html/* ${QT_DOC}/html

.include <bsd.port.mk>

.if ${SUBPACKAGE} =="-examples"
PKGNAME:=qt-examples-1.45
.elif ${SUBPACKAGE} =="-html"
PKGNAME:=qt-html-1.45
.endif

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:U} == YES
USE_TARGET=	openbsd-g++-static
.else
USE_TARGET=	openbsd-g++-shared
.endif
