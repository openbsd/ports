# $OpenBSD: Makefile,v 1.12 2000/03/24 23:28:14 espie Exp $

DISTNAME=	py152
PKGNAME=	python-1.5.2
CATEGORIES=	lang
NEED_VERSION=	 1.230
MASTER_SITES=	ftp://www.python.org/pub/python/src/ \
		ftp://ftp.cwi.nl/pub/python/src/
EXTRACT_SUFX=	.tgz

MAINTAINER=	jasoni@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	${TK_DEPENDS}

FAKE=		Yes
HAS_CONFIGURE=	Yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --prefix='$${DESTDIR}${PREFIX}'
CONFIGURE_ARGS+= --with-fpectl 
MAKE_FLAGS+=	OPT="${CFLAGS}"

PLIST=	${WRKDIR}/PLIST

WRKDIST=	${WRKDIR}/Python-1.5.2

# Support for Tk is compiled in by default.
WITH_TK?=	Yes
.if ${WITH_TK:U} == YES
TK_DEPENDS=	tk80.1.5::x11/tk80
SETUP_LOCAL+=	Setup.tk
.endif

# If libc_r exists, thread support is compiled in by default unless this
# is a SPARC system where threads are currently non functional.
.if (${MACHINE_ARCH} == "sparc")
WITH_THREADS?=	No
.else
WITH_THREADS?=	Yes
.endif
.if exists(/usr/lib/libc_r.a) && defined(WITH_THREADS) && ${WITH_THREADS:U} == YES
CONFIGURE_ARGS+= --with-thread
.endif

# The mpz module will be built on machines with a full source tree.
# Currently disabled.
#.if exists(/usr/src/gnu/lib/libgmp/mpn/generic/gmp-mparam.h)
#WITH_MPZ=	Yes
#SETUP_LOCAL+=	Setup.gmp
#.endif

# Install additional tools be default.
WITH_TOOLS?=	Yes
.if defined(WITH_TOOLS) && ${WITH_TOOLS:U} == YES
PLIST_TOOLS=	PLIST.Tools
.endif

.if ${MACHINE_ARCH} == "alpha"
NO64BIT=	\#
.endif

pre-configure:
	@echo ""
	@echo "***"
	@echo "*** Python is built with support for Tk and threads"
	@echo "*** (if you have threads) by default.  The optional"
	@echo "*** Python tools will also be installed by default"
	@echo "*** To turn these options off, set the approriate"
	@echo "*** variable to 'no'."
	@echo "*** 		WITH_TK=no"
	@echo "***		WITH_THREADS=no"
	@echo "***		WITH_TOOLS=no"
	@echo "***"
	@echo ""

# Depends on NO_SHARED_LIBS.
post-configure:

post-install:
	@strip ${PREFIX}/bin/python
.if defined(WITH_TOOLS) && ${WITH_TOOLS:L} == yes
	@cd ${WRKSRC}; tar -cf - Tools | (cd ${PREFIX}/lib/python1.5; tar -xf -)
.endif
	
.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:U} == YES
NOSHARED=	\#
PLIST_PRE=	${FILESDIR}/PLIST.noshared
.else
PLIST_PRE=	${FILESDIR}/PLIST
.endif

post-configure:
	@sed -e 's,@NOSHARED@,${NOSHARED},g' \
	     -e 's,@NO64BIT@,${NO64BIT},g'   \
		${FILESDIR}/Setup > ${WRKSRC}/Modules/Setup
.for file in ${SETUP_LOCAL}
	@sed -e 's,@NOSHARED@,${NOSHARED},g' \
		${FILESDIR}/${file} >> ${WRKSRC}/Modules/Setup.local
.endfor
	@cp ${PLIST_PRE} ${PLIST}
.if !defined(NO_SHARED_LIBS)
.if !defined(NO64BIT)
	@cat ${FILESDIR}/PLIST.mm >> ${PLIST}
.endif
.if defined(WITH_TK) && ${WITH_TK:U} == YES
	@cat ${FILESDIR}/PLIST.tk >> ${PLIST}
.endif
.if defined(WITH_GMP) && ${WITH_GMP:U} == YES
	@cat ${FILESDIR}/PLIST.gmp >> ${PLIST}
.endif
.endif
.if defined(WITH_TOOLS) && ${WITH_TOOLS} == YES
	@cat ${FILESDIR}/PLIST.Tools >> ${PLIST}
.endif
	@sort -r -o ${PLIST}.new ${PLIST}
	@mv ${PLIST}.new ${PLIST}
