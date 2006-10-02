# $OpenBSD: Makefile,v 1.54 2006/10/02 21:42:27 naddy Exp $
# $FreeBSD: Makefile,v 1.33 1999/02/27 03:09:57 andreas Exp $
COMMENT=		"C++ X11 GUI toolkit"
COMMENT-examples=	"examples and tutorial for qt2"
COMMENT-html=		"off-line html documentation for qt2"

VERSION=	3.2
DISTNAME=	qt-2.${VERSION}
CATEGORIES=	x11
PKGNAME=		qt2-${VERSION}p1
PKGNAME-examples=	qt2-examples-${VERSION}p0
PKGNAME-html=		qt2-html-${VERSION}p0
SHARED_LIBS=		qt	20.0


MASTER_SITES=	ftp://ftp.troll.no/qt/source/
DISTFILES=	qt-x11-2.${VERSION}.tar.gz

HOMEPAGE=	http://www.trolltech.com/qt/

MAINTAINER=	Marc Espie <espie@openbsd.org>

# QPL/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
myWANTLIB=		GL GLU X11 Xext Xmu c m stdc++ z

#CXXFLAGS+=	-g

USE_X11=	Yes
USE_GMAKE=	Yes
MAKE_ENV=	QTDIR="${WRKDIST}" EXTRA_SAMPLES="${EXTRA_SAMPLES}" \
		SYS_CXX="${CXX}" SYS_CXXFLAGS="${CXXFLAGS} -I${X11BASE}/include/freetype2" \
		LD_LIBRARY_PATH="${WRKDIST}/lib"
MAKE_FLAGS=	DESIGNER_SUBDIR=dummy LIBqt_VERSION=$(LIBqt_VERSION)
FAKE_FLAGS=	$(MAKE_FLAGS) DESTDIR=$(WRKINST)

CONFIGURE_STYLE= simple
CONFIGURE_ARGS=	-gif -system-libmng -system-libpng -system-jpeg \
		-system-zlib -no-thread -sm -no-g++-exceptions \
		-v
#CONFIGURE_ARGS+=-static -debug
#CONFIGURE_ARGS+=-debug

CONFIGURE_ENV=	QTDIR="${WRKSRC}" MODULES="${QTMODULES}"

MULTI_PACKAGES=	-examples -html
SUBPACKAGE?=

QTMODULES=	tools kernel widgets dialogs \
		iconview workspace network canvas table xml
EXTRA_SAMPLES=

QTMODULES+= opengl
EXTRA_SAMPLES+=box gear glpixmap overlay overlay_x11 sharedbox

.if ${SUBPACKAGE} != "-examples"
myWANTLIB+=	lcms ICE Xft SM jpeg 
.endif
.if !defined(PACKAGING) || ${SUBPACKAGE} == "-examples"
myWANTLIB+=	pthread
.endif

LIB_DEPENDS=

.if !defined(PACKAGING) || ${SUBPACKAGE} != "-html"
LIB_DEPENDS+=	png::graphics/png \
		mng::graphics/libmng
WANTLIB=	${myWANTLIB}
.endif
.if defined(PACKAGING)
.  if ${SUBPACKAGE} == "-examples"
LIB_DEPENDS=	lib/qt2/qt.>=2.::x11/qt2
.  elif ${SUBPACKAGE} == "-html"
PKG_ARCH=	*
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

VMEM_WARNING=	Yes
NO_REGRESS=	Yes

pre-configure:
	@cd ${WRKSRC}/configs; for i in openbsd-*; do \
	    mv -f $$i $$i.bak && \
		sed -e s,/usr/local,${LOCALBASE}, \
		-e s,/usr/X11R6,${X11BASE}, <$$i.bak >$$i; \
	done

post-configure:
	@cd ${WRKSRC} && cp -R examples examples-src
	@find ${WRKSRC}/examples-src -name '*.orig' |xargs -r rm
	@cd ${WRKSRC} && cp -R tutorial tutorial-src
	@find ${WRKSRC}/tutorial-src -name '*.orig' |xargs -r rm

do-install:
	${INSTALL_DATA_DIR} ${QT_INCDIR}
	${INSTALL_MAN_DIR} ${QT_MANDIR}/man1
	${INSTALL_MAN_DIR} ${QT_MANDIR}/man3
	${INSTALL_DATA_DIR} ${QT_LIBDIR}/bin
	${INSTALL_DATA_DIR} ${QT_EXAMPLES}
	${INSTALL_DATA_DIR} ${QT_TUTORIAL}
	${INSTALL_DATA_DIR} ${QT_DOC}/html
	@if [ -f ${WRKBUILD}/lib/libqt.a ]; then \
	 ${INSTALL_DATA} ${WRKBUILD}/lib/libqt.a ${PREFIX}/lib/qt2; \
	fi
	@if [ -f ${WRKBUILD}/lib/libqt.so.$(LIBqt_VERSION) ]; then \
	 ${INSTALL_DATA} ${WRKBUILD}/lib/libqt.so.$(LIBqt_VERSION) ${PREFIX}/lib/qt2; \
	 ln -sf qt2/libqt.so.$(LIBqt_VERSION) ${PREFIX}/lib/libqt.so.$(LIBqt_VERSION); \
	fi
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/moc ${QT_LIBDIR}/bin
	${INSTALL_MAN} ${WRKSRC}/src/moc/moc.1 ${QT_MANDIR}/man1/moc2.1
	@ln -sf ${TRUEPREFIX}/lib/qt2/bin/moc ${PREFIX}/bin/moc2
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
	${INSTALL_DATA_DIR} ${QT_LIBDIR}/doc
	ln -s ${TRUEPREFIX}/share/doc/qt2/html ${QT_LIBDIR}/doc/html

.include <bsd.port.mk>
