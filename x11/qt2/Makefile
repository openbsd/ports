# $OpenBSD: Makefile,v 1.16 2001/02/23 14:36:55 espie Exp $
# $FreeBSD: Makefile,v 1.33 1999/02/27 03:09:57 andreas Exp $

VERSION=	2.4
DISTNAME=	qt-2.${VERSION}
PKGNAME=	qt2-${VERSION}
CATEGORIES=	x11
NEED_VERSION=	1.336
MASTER_SITES=	ftp://ftp.troll.no/qt/source/
DISTFILES=	qt-x11-2.${VERSION}.tar.gz

HOMEPAGE=	http://www.trolltech.com/qt/

MAINTAINER=	Marc Espie <espie@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
USE_GMAKE=	Yes
MAKE_ENV=	QTDIR="${WRKSRC}" EXTRA_SAMPLES="${EXTRA_SAMPLES}" \
		SYS_CXX="${CXX}" SYS_CXXFLAGS="${CXXFLAGS}" \
		LD_LIBRARY_PATH="${WRKSRC}/lib"
CONFIGURE_STYLE= simple
CONFIGURE_ARGS=	-gif -system-libmng -system-libpng -system-jpeg \
		-system-zlib -no-thread -sm
CONFIGURE_ENV=	QTDIR="${WRKSRC}" MODULES="${MODULES}"

MULTI_PACKAGES=	-examples -html
SUBPACKAGE?=

FLAVORS=	gl
FLAVOR?=

MODULES=	tools kernel widgets dialogs \
		iconview workspace network canvas table xml
EXTRA_SAMPLES=
.if ${SUBPACKAGE} != "-html"
LIB_DEPENDS=	png.1.::graphics/png \
		mng.1.::graphics/libmng
.  if ${FLAVOR:L} == "gl"
LIB_DEPENDS+= 	GL.3.2::graphics/Mesa
MODULES+= opengl
EXTRA_SAMPLES+=box gear glpixmap overlay overlay_x11 sharedbox
.else
CONFIGURE_ARGS+=-no-opengl
.  endif
.endif

QT_INCDIR=	${PREFIX}/include/X11/qt2
TRUEDIR=	${TRUEPREFIX}/lib/qt2
QT_LIBDIR=	${PREFIX}/lib/qt2
QT_MANDIR=	${QT_LIBDIR}/man
QT_EXAMPLES=	${QT_LIBDIR}/examples
QT_TUTORIAL=	${QT_LIBDIR}/tutorial
QT_DOC=		${PREFIX}/share/doc/qt2

# for manpages in MESSAGE
SUBST_VARS=	VERSION QT_LIBDIR QT_DOC

DOCS=	ANNOUNCE FAQ LICENSE.GPL README README.QT \
	changes-2*

post-patch:
	@cd ${WRKSRC}/configs; for i in openbsd-*; do \
	    mv -f $$i $$i.bak && \
		sed -e s,/usr/local,${LOCALBASE}, \
		-e s,/usr/X11R6,${X11BASE}, <$$i.bak >$$i; \
	done

post-configure:
	@cd ${WRKSRC} && cp -R examples examples-src
	@cd ${WRKSRC} && cp -R tutorial tutorial-src

pre-build:
	@echo ""
	@echo "*** WARNING: you may see an error such as"
	@echo "***       virtual memory exhausted"
	@echo "*** when building this package.  If you do you must increase"
	@echo "*** your limits.  See the man page for your shell and look"
	@echo "*** for the 'limit' or 'ulimit' command."
	@echo ""

do-install:
	${INSTALL_DATA_DIR} ${QT_INCDIR}
	${INSTALL_DATA_DIR} ${QT_MANDIR}/man3
	${INSTALL_DATA_DIR} ${QT_LIBDIR}/bin
	${INSTALL_DATA_DIR} ${QT_LIBDIR}/tools/designer/templates
	${INSTALL_DATA_DIR} ${QT_EXAMPLES}
	${INSTALL_DATA_DIR} ${QT_TUTORIAL}
	${INSTALL_DATA_DIR} ${QT_DOC}/html
	@if [ -f ${WRKBUILD}/lib/libqt.a ]; then \
	 ${INSTALL_DATA} ${WRKBUILD}/lib/libqt.a ${PREFIX}/lib/qt2; \
	fi
	@if [ -f ${WRKBUILD}/lib/libqt.so.2.2.4 ]; then \
	 ${INSTALL_DATA} ${WRKBUILD}/lib/libqt.so.2.2.4 \
		${PREFIX}/lib/qt2/libqt.so.2.24; \
	fi
	@if [ -f ${WRKBUILD}/lib/libqutil.a ]; then \
	 ${INSTALL_DATA} ${WRKBUILD}/lib/libqutil.a ${PREFIX}/lib/qt2; \
	fi
	@if [ -f ${WRKBUILD}/lib/libqutil.so.1.0.0 ]; then \
	 ${INSTALL_DATA} ${WRKBUILD}/lib/libqutil.so.1.0.0 \
		${PREFIX}/lib/qt2/libqutil.so.1.0; \
	fi
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/moc ${QT_LIBDIR}/bin
	@ln -sf ${TRUEPREFIX}/lib/qt2/bin/moc ${PREFIX}/bin/moc2
	echo "#! /bin/sh" >${WRKBUILD}/designer
	echo "QTDIR=${TRUEDIR} exec ${TRUEDIR}/bin/designer" \
	    >>${WRKBUILD}/designer
	${INSTALL_DATA} ${WRKBUILD}/tools/designer/templates/* \
		${QT_LIBDIR}/tools/designer/templates
	${INSTALL_SCRIPT} ${WRKBUILD}/designer ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/designer ${QT_LIBDIR}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/uic ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKBUILD}/bin/findtr ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKBUILD}/bin/qt20fix ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKBUILD}/bin/qtrename140 ${PREFIX}/bin
	# avoid installing broken links
	@rm -f ${WRKSRC}/include/qt_{mac,windows}.h
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
	@if [ -x ${WRKSRC}/examples/overlay_x11/overlayrubber ]; then \
	    ${INSTALL_PROGRAM} ${WRKSRC}/examples/overlay_x11/overlayrubber \
	    	${QT_EXAMPLES}/overlay_x11/overlayrubber; \
	fi
	cp -R ${WRKSRC}/tutorial-src/* ${QT_TUTORIAL}
	@cd ${WRKSRC}/tutorial; for i in *; do \
	if [ -x $$i/$$i ]; then \
	    ${INSTALL_PROGRAM} $$i/$$i ${QT_TUTORIAL}/$$i; \
	fi; done
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${QT_DOC}
	cp -R ${WRKSRC}/doc/html/* ${QT_DOC}/html

.include <bsd.port.mk>

.if ${SUBPACKAGE} == "-examples"
.  if ${FLAVOR:L} == "gl"
PKGNAME:=	qt2-examples-${VERSION}-gl
.  else
PKGNAME:=	qt2-examples-${VERSION}
.  endif
.elif ${SUBPACKAGE} == "-html"
PKGNAME:=	qt2-html-${VERSION}
.endif
