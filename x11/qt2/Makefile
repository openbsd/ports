# $OpenBSD: Makefile,v 1.5 2000/06/23 14:17:40 espie Exp $
# $FreeBSD: Makefile,v 1.33 1999/02/27 03:09:57 andreas Exp $

DISTNAME=	qt-2.1.1
PKGNAME=	qt2-1.1
CATEGORIES=	x11
NEED_VERSION=	1.301
MASTER_SITES=	ftp://ftp.troll.no/qt/source/
DISTFILES=	qt-x11-2.1.1.tar.gz

HOMEPAGE=	http://www.trolltech.com/qt/

MULTI_PACKAGES=-examples -html

SUBPACKAGE?=
# for the qt image extension
.if ${SUBPACKAGE} != "-html"
BUILD_DEPENDS=	${PREFIX}/include/jpeglib.h::graphics/jpeg
LIB_DEPENDS=	png.1.::graphics/png jpeg.62.::graphics/jpeg
.endif

MAINTAINER=	espie@openbsd.org

PERMIT_PACKAGE_CDROM=
PERMIT_PACKAGE_FTP=
PERMIT_DISTFILES_CDROM=
PERMIT_DISTFILES_FTP=

MAKE_ENV=	QTDIR="${WRKSRC}" SYS_CXX="${CXX}" SYS_CXXFLAGS="${CXXFLAGS}"

CONFIGURE_STYLE= simple
CONFIGURE_ENV=	${MAKE_ENV}
CONFIGURE_ARGS+=-gif -system-libpng -system-jpeg -sm -no-thread -system-zlib

USE_X11=	Yes
USE_GMAKE=	Yes

QT_INCDIR=	${PREFIX}/include/X11/qt2
QT_LIBDIR=	${PREFIX}/lib/qt2
QT_MANDIR=	${QT_LIBDIR}/man
QT_EXAMPLES=	${QT_LIBDIR}/examples
QT_TUTORIAL=	${QT_LIBDIR}/tutorial
QT_DOC=		${PREFIX}/share/doc/qt2

# for manpages in MESSAGE
SUBST_VARS=	QT_LIBDIR QT_DOC

#		qt-2.1.1	-> libqt.2.11
QT_VER=		2.11

post-patch:
	cd ${WRKSRC}/configs; for i in openbsd-*; do \
	    mv -f $$i $$i.bak && \
		sed -e s,/usr/local,${LOCALBASE}, \
		-e s,/usr/X11R6,${X11BASE}, <$$i.bak >$$i; \
	done

post-configure:
	cd ${WRKSRC} && cp -R examples examples-src
	cd ${WRKSRC} && cp -R tutorial tutorial-src

do-install:
	${INSTALL_DATA_DIR} ${QT_INCDIR} ${QT_DOC}/html ${QT_LIBDIR}/bin \
	    ${QT_EXAMPLES} ${QT_TUTORIAL} \
	    ${QT_LIBDIR}/man/man3
	@cd ${WRKBUILD}/lib; if [ -f libqt.a ]; then \
		${INSTALL_DATA} libqt.a ${PREFIX}/lib/qt2; \
	fi; \
	if [ -f libqt.so.2.1.1 ]; then \
		ln -f libqt.so.2.1.1 libqt.so.2.11; \
		${INSTALL_DATA} libqt.so.2.11 ${PREFIX}/lib/qt2; \
		ln -s ${TRUEPREFIX}/lib/qt2/libqt.so.2.11 ${PREFIX}/lib; \
	fi
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/moc ${QT_LIBDIR}/bin
	ln -s ${TRUEPREFIX}/lib/qt2/bin/moc ${PREFIX}/bin/moc2
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/mergetr ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/msg2qm ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKBUILD}/bin/findtr ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKBUILD}/bin/qt20fix ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKBUILD}/bin/qtrename140 ${PREFIX}/bin
	# avoid installing broken links
	-rm ${WRKSRC}/include/qt_{mac,windows}.h
	${INSTALL_DATA} ${WRKSRC}/include/* ${QT_INCDIR}
	@for i in ${WRKSRC}/doc/man/man3/*; do \
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
	cd ${WRKSRC} && ${INSTALL_DATA} ANNOUNCE FAQ LICENSE.QPL README \
	    README.QT changes-2.1.0 changes-2.1.1 ${QT_DOC}
	cp -R ${WRKSRC}/doc/html/* ${QT_DOC}/html

.include <bsd.port.mk>

.if ${SUBPACKAGE} =="-examples"
PKGNAME:=qt2-examples-1.1
.elif ${SUBPACKAGE} =="-html"
PKGNAME:=qt2-html-1.1
.endif
