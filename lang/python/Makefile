# $OpenBSD: Makefile,v 1.46 2001/11/05 22:46:53 shell Exp $
# Uses threads

COMMENT= 	"interpreted object-oriented programming language"
COMMENT-tools=	"extra tools for python"

VERSION=	2.1.1
PKGNAME=	python-${VERSION}
DISTNAME=	Python-${VERSION}
CATEGORIES=	lang
NEED_VERSION=	1.475
MASTER_SITES=	ftp://ftp.python.org/pub/%SUBDIR%/ \
		ftp://python.mirrors.netnumina.com/python/pub/%SUBDIR%/
		http://www.linux.org.hk/mirror/python/ftp/%SUBDIR%/
MASTER_SITE_SUBDIR= python/${VERSION}
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.python.org/

MAINTAINER=	Jason Ish <jasoni@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	tk threads no_tools
.if ${MACHINE_ARCH} == "i386"
FLAVOR?=	threads
.else
FLAVOR?=
.endif

# Don't package tools if not needed
.if empty(FLAVOR:L:Mno_tools)
MULTI_PACKAGES=	-tools
.endif

# The tools package is not flavor dependent.
FULLPKGNAME-tools=python-tools-${VERSION}
FULLPKGNAME=${PKGNAME}${FLAVOR_EXT:S/-no_tools//}

LIB_DEPENDS=	gmp::devel/gmp

.if ${FLAVOR:L:Mtk}
LIB_DEPENDS+=	tk83::x11/tk/8.3
SETUP_LOCAL+=	Setup.tk
.endif

CONFIGURE_STYLE= autoconf dest
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --with-fpectl 

# Threads support is compiled in by default only on i386 for now.
.if ${FLAVOR:L:Mthreads}
.if ${MACHINE_ARCH} != "i386"
BROKEN="Support for ${MACHINE_ARCH} threads is currently broken"
.else
CONFIGURE_ARGS+= --with-threads
.endif
.else
CONFIGURE_ARGS+= --without-threads
.endif

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "sparc64"
NO64BIT=	\#
.endif

ALL_TARGET=	all ./Lib/plat-openbsd3

pre-configure:
	@echo ""
	@echo "***"
	@echo "*** Building Python with ${FLAVOR}"
	@echo "***"
	@echo "*** You can set ${FLAVORS} by typing"
	@echo "*** env FLAVOR=\"set of options\" ${MAKE_PROGRAM}"
	@echo "***"
	@echo ""

post-configure:
	@sed -e 's,@NOSHARED@,${NOSHARED},g' \
	     -e 's,@NO64BIT@,${NO64BIT},g'   \
		${FILESDIR}/Setup > ${WRKSRC}/Modules/Setup
.for file in ${SETUP_LOCAL}
	@sed -e 's,@NOSHARED@,${NOSHARED},g' \
		${FILESDIR}/${file} >> ${WRKSRC}/Modules/Setup.local
.endfor
	@cd ${WRKSRC} && ${MAKE_PROGRAM} Makefile

patch:

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/Tools/scripts/pydoc ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/libpython2.1.a ${PREFIX}/lib/python2.1/config
	@if [ -f ${PREFIX}/lib/python2.1/config/libpython2.1.so.0.0 ]; then \
		cd ${PREFIX}/lib && ln -s python2.1/config/libpython2.1.so.0.0; \
	fi
	@strip ${PREFIX}/bin/python
	@cd ${WRKSRC}; tar -cf - Tools | (cd ${PREFIX}/lib/python2.1; \
		tar -xf -)
	 
.include <bsd.port.mk>

.if defined(NO64BIT)
SED_PLIST+=-e '/%%mm%%/d'
.else
SED_PLIST+=-e '/%%mm%%/r${PKGDIR}/PFRAG.mm' -e '//d'
.endif

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:U} == YES
NOSHARED=	\#
CONFIGURE_ENV+=	OPT='${CFLAGS}' LDFLAGS='-L${WRKSRC}'
.else
CONFIGURE_ENV+=	OPT='${CFLAGS} -fPIC' LDFLAGS='-L${WRKSRC}'
MAKE_FLAGS+= MAJOR=0 MINOR=0 LDLIBRARY=libpython2.1.so.0.0 \
	LD_LIBRARY_PATH=${WRKSRC}
FAKE_FLAGS+= MAJOR=0 MINOR=0 LDLIBRARY=libpython2.1.so.0.0 \
	LD_LIBRARY_PATH=${WRKSRC} RANLIB=:
.endif
