# $OpenBSD: Makefile,v 1.14 2000/04/03 17:11:44 espie Exp $

DISTNAME=	py152
PKGNAME=	python-1.5.2
CATEGORIES=	lang
NEED_VERSION=	1.251
MASTER_SITES=	ftp://www.python.org/pub/python/src/ \
		ftp://ftp.cwi.nl/pub/python/src/
EXTRACT_SUFX=	.tgz

MAINTAINER=	jasoni@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=tk tools mpz threads

# Support for Tk is compiled in by default.
FLAVOR?=tk tools threads

LIB_DEPENDS=

.if ${FLAVOR:L:Mtk}
LIB_DEPENDS+=	tk80.1.5::x11/tk/8.0
SETUP_LOCAL+=	Setup.tk
.endif

FAKE=		Yes
HAS_CONFIGURE=	Yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --prefix='$${DESTDIR}${PREFIX}'
CONFIGURE_ARGS+= --with-fpectl 
MAKE_FLAGS+=	OPT="${CFLAGS}"


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

# The mpz module will be built on machines with a full source tree.
.if ${FLAVOR:L:Mmpz}
.  if exists(/usr/src/gnu/lib/libgmp/mpn/generic/gmp-mparam.h)
BROKEN="Currently disabled"
SETUP_LOCAL+=	Setup.gmp
.  else
BROKEN="Need a full source tree for that module"
.  endif
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
	@echo ""

# Depends on NO_SHARED_LIBS.
post-configure:
	cd ${.CURDIR} && make finish-setup

post-install:
	@strip ${PREFIX}/bin/python
.if ${FLAVOR:L:Mtools}
	@cd ${WRKSRC}; tar -cf - Tools | (cd ${PREFIX}/lib/python1.5; tar -xf -)
.endif
	
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

