# $OpenBSD: Makefile,v 1.3 2000/06/23 08:41:16 espie Exp $
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

CONFIGURE_STYLE=	simple
CONFIGURE_ENV=${MAKE_ENV}
CONFIGURE_ARGS+=-gif -system-libpng -system-jpeg -sm -no-thread -system-zlib

USE_X11=	Yes
USE_GMAKE=	Yes

QT_INCDIR=	${PREFIX}/include/X11/qt2
QT_LIBDIR=	${PREFIX}/lib/qt2
QT_EXAMPLES=	${QT_LIBDIR}/examples
QT_TUTORIAL=	${QT_LIBDIR}/tutorial
QT_DOC=		${PREFIX}/share/doc/qt2

# for manpages in MESSAGE
SUBST_VARS=QT_LIBDIR

#		qt-2.1.1	-> libqt.2.11
QT_VER=		2.11
EXAMPLES=

post-patch:
	cd ${WRKSRC} && cp -R examples examples-src
	cd ${WRKSRC} && cp -R tutorial tutorial-src

do-install:
	${INSTALL_DATA_DIR} ${QT_INCDIR} ${QT_DOC}/html ${QT_LIBDIR}/bin \
	    ${QT_EXAMPLES}/src ${QT_EXAMPLES}/bin \
	    ${QT_TUTORIAL}/src ${QT_TUTORIAL}/bin \
	    ${QT_LIBDIR}/man/man3
	@cd ${WRKBUILD}/lib; if [ -f libqt.a ]; then \
		${INSTALL_DATA} libqt.a ${PREFIX}/lib; \
	fi; \
	if [ -f libqt.so.2.1.1 ]; then \
		ln -f libqt.so.2.1.1 libqt.so.2.11; \
		${INSTALL_DATA} libqt.so.2.11 ${PREFIX}/lib; \
	fi
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/moc ${QT_LIBDIR}/bin
	# avoid installing broken links
	-rm ${WRKSRC}/include/qt_{mac,windows}.h
	-${INSTALL_DATA} ${WRKSRC}/include/* ${QT_INCDIR}
	@for i in ${WRKSRC}/doc/man/man3/*; do \
	  j=$${i%qt}; \
	  sed -e 's,\.3qt,\.3,g' <$$i >$$j && \
	  	${INSTALL_MAN} $$j ${QT_LIBDIR}/man/man3; \
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
	cd ${WRKSRC} && ${INSTALL_DATA} ANNOUNCE FAQ LICENSE.QPL README \
	    README.QT changes-2.1.0 changes-2.1.1 ${QT_DOC}
	cp -R ${WRKSRC}/doc/html/* ${QT_DOC}/html

.include <bsd.port.mk>
.if ${SUBPACKAGE} =="-examples"
PKGNAME:=qt2-examples-1.1
.elif ${SUBPACKAGE} =="-html"
PKGNAME:=qt2-html-1.1
.endif
