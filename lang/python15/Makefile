# $OpenBSD: Makefile,v 1.7 2001/07/21 00:46:00 matt Exp $
#
# This port should remain Python 1.5.2.  Please do not upgrade.

COMMENT=        "interpreted object-oriented programming language"
COMMENT-tools=  "extra tools for python"

DISTNAME=	py152
PKGNAME=	python-1.5.2
CATEGORIES=	lang
NEED_VERSION=	1.405
MASTER_SITES=	ftp://www.python.org/pub/python/src/ \
		ftp://ftp.cwi.nl/pub/python/src/
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
FULLPKGNAME-tools=python-tools-1.5.2
FULLPKGNAME=${PKGNAME}${FLAVOR_EXT:S/-no_tools//}

.if ${FLAVOR:L:Mtk}
LIB_DEPENDS=	tk80.1.5::x11/tk/8.0
SETUP_LOCAL+=	Setup.tk
.endif

CONFIGURE_STYLE= autoconf dest
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --with-fpectl --enable-debug
CONFIGURE_ENV=	OPT="${CFLAGS}" LDSHARED="cc -shared -fpic"

BUILD_DEPENDS=	${LOCALBASE}/lib/libgmp.a::devel/gmp

WRKDIST=	${WRKDIR}/Python-1.5.2

# If libc_r exists, thread support is compiled in by default unless this
# is a SPARC system where threads are currently non functional.
.if ${FLAVOR:L:Mthreads}
.if (${MACHINE_ARCH} == "sparc") 
BROKEN="Support for ${MACHINE_ARCH} threads is currently broken"
.elif !exists(/usr/lib/libc_r.a) 
BROKEN="No thread support on this machine"
.else
CONFIGURE_ARGS+= --with-thread
.endif
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
	@echo "*** FLAVOR=\"set of options\" make"
	@echo "***"
	@echo ""

# Depends on NO_SHARED_LIBS.
post-configure:
	cd ${.CURDIR} && make finish-setup

post-install:
	@strip ${PREFIX}/bin/python
	@cd ${WRKSRC}; tar -cf - Tools | (cd ${PREFIX}/lib/python1.5; tar -xf -)

.include <bsd.port.mk>

# The tools package is not flavor dependent.

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
