# $OpenBSD: Makefile,v 1.27 2001/01/19 06:59:12 jasoni Exp $

VERSION=	2.0
DISTNAME=	python-${VERSION}
CATEGORIES=	lang
NEED_VERSION=	1.310
MASTER_SITES=	ftp://www.python.org/pub/python/src/ 

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

.if ${FLAVOR:L:Mtk}
LIB_DEPENDS=	tk83::x11/tk/8.3
SETUP_LOCAL+=	Setup.tk
.endif

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --with-fpectl 
MAKE_FLAGS+=	OPT="${CFLAGS}"

BUILD_DEPENDS=	${LOCALBASE}/lib/libgmp.a::devel/gmp

WRKDIST=	${WRKDIR}/Python-${VERSION}

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
	@echo "*** You can set ${FLAVORS} by saying"
	@echo "*** make FLAVOR=\"set of options\""
	@echo "***"
	@echo ""

# Depends on NO_SHARED_LIBS.
post-configure:
	cd ${.CURDIR} && make finish-setup

post-install:
	@strip ${PREFIX}/bin/python
	@cd ${WRKSRC}; tar -cf - Tools | (cd ${PREFIX}/lib/python${VERSION}; tar -xf -)
	
.include <bsd.port.mk>

# The tools package is not flavor dependent.
.if defined(SUBPACKAGE) && ${SUBPACKAGE} == "-tools"
PKGNAME=python-tools-${VERSION}
.endif
.if ${FLAVOR:L:Mno_tools}
PKGNAME:=${PKGNAME:S/-no_tools//}
.endif

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
