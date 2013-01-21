# $OpenBSD: xenocara.port.mk,v 1.6 2013/01/21 15:26:20 espie Exp $

CATEGORIES = base xenocara
COMMENT = Xenocara ${COMPONENT}
FLAT = ${COMPONENT:S/\//./g:C/-([0-9])/_\1/g}
VERSION ?= 2
DISTNAME = xc-${FLAT}-${VERSION}
DISTFILES =

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

LOCATION = ${PACKAGE_REPOSITORY}/${MACHINE_ARCH}/components
REV = ${OSREV:S/.//}

MAKE_FLAGS = XOBJDIR=${WRKDIR}/obj
FAKE_FLAGS += RELEASEDIR=${LOCATION}
SUBST_VARS += COMPONENT
PKGDIR ?= ${PORTSDIR}/base/xenocara/pkg
CFLAGS += -I${INCBASE}${X11BASE}/include
CXXFLAGS += -I${INCBASE}${X11BASE}/include

ALL_TARGET ?= depend all
FAKE_TARGET ?= install
XENOCARA_COMPONENT =	Yes

BUILD_DEPENDS = ${XDEPS:S,^,base/xenocara/,}
RUN_DEPENDS = ${BUILD_DEPENDS}
COMPONENT_TYPE ?=

.if ${COMPONENT_TYPE:Mlib}
PKG_ARGS += -DLIB=1
.else
PKG_ARGS += -DLIB=0
.endif

.if defined(FONTSDIRS) && !empty(FONTSDIRS)
PKG_ARGS += -DFONT=1
SUBST_VARS += FONTSDIRS
.else
PKG_ARGS += -DFONT=0
.endif

.if ${COMPONENT} != "share/mk"
BUILD_DEPENDS += base/xenocara/share/mk
.endif
RUN_DEPENDS += base/bootstrap

MANIFEST = ${PREFIX}/libdata/base/${FULLPKGNAME}.manifest

XINCDIRS = GL/internal X11/ICE X11/PM X11/SM X11/Xaw X11/Xcursor \
	X11/Xft X11/Xmu X11/Xtrans X11/bitmaps X11/dri \
	X11/extensions X11/fonts X11/pixmaps fontconfig \
	freetype2/freetype/config \
	freetype2/freetype/internal/services pixman-1 xcb xorg

INCBASE = ${WRKDIR}/incbase

.if defined(XCVS_CO)
WRKSRC ?= ${WRKDIR}/xenocara/${COMPONENT}
.  if !target(post-extract)
post-extract:
	cd ${WRKDIR} && ${XCVS_CO} -P xenocara/${COMPONENT} ${EXTRA_SRC}
.  endif
.else
WRKSRC ?= ${XSRCDIR}/${COMPONENT}
.endif

# handling of includes AND obj
.if !target(post-patch)
post-patch:
	mkdir -p ${WRKDIR}/obj
	cd ${WRKSRC} && ${MAKE} -f ${MAKE_FILE} ${MAKE_FLAGS} obj
.endif
.if !target(pre-configure)
pre-configure:
.  for i in ${XINCDIRS}
	mkdir -p ${INCBASE}${X11BASE}/include/$i
.  endfor
	cd ${WRKSRC} && ${MAKE} -f ${MAKE_FILE} ${MAKE_FLAGS} includes DESTDIR=${INCBASE} INSTALL_DATA='cp -fp'
.endif

# XXX this doesn't work yet, no idea why
#.if "${MAKE_FILE}" == "Makefile.bsd-wrapper" && !target(do-configure)
#do-configure:
#	cd ${WRKSRC} && ${SUDO} ${MAKE} -f ${MAKE_FILE} ${MAKE_FLAGS} config.status
#.endif

.if !target(pre-install)
pre-install:
	cd ${WRKINST} && find . -print >${WRKDIR}/badlist
# I should be able to say FAKE_TARGET=includes install
# but at least freetype is broken in such a way that this doesn't work at all
	cd ${WRKSRC} && ${SUDO} ${MAKE} -f ${MAKE_FILE} ${MAKE_FLAGS} includes DESTDIR=${WRKINST}
.endif

.if !target(post-install)
post-install:
	mkdir -p ${LOCATION}
	@cd ${WRKINST} && find . -print |fgrep -v -e /fonts.dir -e /fonts.scale >goodlist
	@echo ./goodlist >>${WRKDIR}/badlist
	mkdir -p ${PREFIX}/libdata/base
	@sort ${WRKINST}/goodlist ${WRKDIR}/badlist |uniq -u >${MANIFEST}
	@a=`mktemp ${LOCATION}/${FLAT}.tgz.XXXXXX`; \
	cd ${WRKINST} && \
	    tar zcf $$a -I ${MANIFEST}; \
	echo xc-${FLAT} $$a >${PREFIX}/libdata/base/${FULLPKGNAME}.gen
.endif
