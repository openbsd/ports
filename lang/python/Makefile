# $OpenBSD: Makefile,v 1.37 2001/09/05 02:55:14 fgsch Exp $
# Use threads

COMMENT= 	"interpreted object-oriented programming language"
COMMENT-tools=	"extra tools for python"

VERSION=	2.1.1
PKGNAME=	python-${VERSION}
DISTNAME=	Python-${VERSION}
CATEGORIES=	lang
NEED_VERSION=	1.413
MASTER_SITES=	ftp://ftp.python.org/pub/%SUBDIR%/ \
		ftp://python.mirrors.netnumina.com/python/pub/%SUBDIR%/
MASTER_SITE_SUBDIR= python/${VERSION}
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.python.org/

MAINTAINER=	Jason Ish <jasoni@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	tk threads no_tools
FLAVOR?=	threads

# don't package tools if not needed
.if empty(FLAVOR:L:Mno_tools)
MULTI_PACKAGES=	-tools
.endif

# The tools package is not flavor dependent.
FULLPKGNAME-tools=python-tools-${VERSION}
FULLPKGNAME=${PKGNAME}${FLAVOR_EXT:S/-no_tools//}

.if ${FLAVOR:L:Mtk}
LIB_DEPENDS=	tk83::x11/tk/8.3
SETUP_LOCAL+=	Setup.tk
.endif

CONFIGURE_STYLE= autoconf dest
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --with-fpectl 
CONFIGURE_ENV+=	OPT='${CFLAGS}' LDSHARED="cc -shared -fpic"

BUILD_DEPENDS=	${LOCALBASE}/lib/libgmp.a::devel/gmp

# If libc_r exists, thread support is compiled in by default unless this
# is a SPARC system where threads are currently non functional.
.if ${FLAVOR:L:Mthreads}
.if (${MACHINE_ARCH} == "sparc") 
BROKEN="Support for ${MACHINE_ARCH} threads is currently broken"
.elif !exists(/usr/lib/libc_r.a) 
BROKEN="No thread support on this machine"
.else
CONFIGURE_ARGS+= --with-threads
.endif
.else
CONFIGURE_ARGS+= --without-threads
.endif

.if ${MACHINE_ARCH} == "alpha"
NO64BIT=	\#
.endif

pre-configure:
	@echo ""
	@echo "***"
	@echo "*** Building Python with ${FLAVOR}"
	@echo "***"
	@echo "*** You can set ${FLAVORS} by typing"
	@echo "*** FLAVOR=\"set of options\" ${MAKE_PROGRAM}"
	@echo "***"
	@echo ""

# Depends on NO_SHARED_LIBS.
post-configure:
	cd ${.CURDIR} && ${MAKE_PROGRAM} finish-setup

patch:

post-install:
	@${INSTALL_SCRIPT} ${WRKSRC}/Tools/scripts/pydoc ${PREFIX}/bin
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
.endif

finish-setup:
	@sed -e 's,@NOSHARED@,${NOSHARED},g' \
	     -e 's,@NO64BIT@,${NO64BIT},g'   \
		${FILESDIR}/Setup > ${WRKSRC}/Modules/Setup
.for file in ${SETUP_LOCAL}
	@sed -e 's,@NOSHARED@,${NOSHARED},g' \
		${FILESDIR}/${file} >> ${WRKSRC}/Modules/Setup.local
.endfor
	@cd ${WRKSRC}; ${MAKE_PROGRAM} Makefile

