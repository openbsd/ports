# $OpenBSD: Makefile,v 1.3 1999/12/13 04:53:02 jasoni Exp $
#

DISTNAME=		py152
PKGNAME=		python-1.5.2
CATEGORIES=		lang
MASTER_SITES=		ftp://www.python.org/pub/python/src/ \
			ftp://ftp.cwi.nl/pub/python/src/
EXTRACT_SUFX=		.tgz

MAINTAINER=		jasoni@openbsd.org

LIB_DEPENDS=		${TK_DEPENDS}
WRKSRC=			${WRKDIR}/Python-1.5.2
GNU_CONFIGURE=		YES
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} --with-fpectl 
MAKE_FLAGS+=		"OPT=${CFLAGS}"

# Support for Tk is compiled in by default.
WITH_TK?=		YES	
.if defined(WITH_TK) && ${WITH_TK:U} == YES
TK_DEPENDS=		tk80\\.1\\.:${PORTSDIR}/x11/tk80
SETUP_LOCAL+=		Setup.tk
.endif

# If libc_r exists, thread support is compiled in by default.
WITH_THREADS?=		YES
.if exists(/usr/lib/libc_r.a) && defined(WITH_THREADS) && ${WITH_THREADS:U} == YES
CONFIGURE_ARGS+=	--with-thread
.endif

# The mpz module will be built on machines with a full source tree.
# Currently disabled.
#.if exists(/usr/src/gnu/lib/libgmp/mpn/generic/gmp-mparam.h)
#WITH_MPZ=		YES
#SETUP_LOCAL+=		Setup.gmp
#.endif

# Install additional tools be default.
WITH_TOOLS?=		YES
.if defined(WITH_TOOLS) && ${WITH_TOOLS:U} == YES
PLIST_TOOLS=		PLIST.Tools
.endif

.if ${MACHINE_ARCH} == "alpha"
NO64BIT=		\#
.endif

pre-configure:
	@${ECHO}
	@${ECHO} "***"
	@${ECHO} "*** Python is built with support for Tk and threads"
	@${ECHO} "*** (if you have threads) by default.  The optional"
	@${ECHO} "*** Python tools will also be installed by default"
	@${ECHO} "*** To turn these options off, set the approriate"
	@${ECHO} "*** variable to 'no'."
	@${ECHO} "*** 		WITH_TK=no"
	@${ECHO} "***		WITH_THREADS=no"
	@${ECHO} "***		WITH_TOOLS=no"
	@${ECHO} "***"
	@${ECHO}

# Depends on NO_SHARED_LIBS.
post-configure:

post-install:
	strip ${PREFIX}/bin/python
.if defined(WITH_TOOLS) && ${WITH_TOOLS:L} == yes
	@cd ${WRKSRC}; tar cf - Tools | (cd ${PREFIX}/lib/python1.5; tar xf -)
.endif
	
.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS)
NOSHARED=		\#
PLIST_PRE=		${FILESDIR}/PLIST.noshared
.else
PLIST_PRE=		${FILESDIR}/PLIST
.endif

post-configure:
	@${SED} -e 's,@NOSHARED@,${NOSHARED},g' \
	        -e 's,@NO64BIT@,${NO64BIT},g'   \
	       ${FILESDIR}/Setup > ${WRKSRC}/Modules/Setup
.for file in ${SETUP_LOCAL}
	@${SED} -e 's,@NOSHARED@,${NOSHARED},g' \
	       ${FILESDIR}/${file} >> ${WRKSRC}/Modules/Setup.local
.endfor
	@${CP} ${PLIST_PRE} ${PLIST}
.if !defined(NO_SHARED_LIBS)
.if !defined(NO64BIT)
	@${CAT} ${FILESDIR}/PLIST.mm >> ${PLIST}
.endif
.if defined(WITH_TK) && ${WITH_TK:U} == YES
	@${CAT} ${FILESDIR}/PLIST.tk >> ${PLIST}
.endif
.if defined(WITH_GMP) && ${WITH_GMP:U} == YES
	@${CAT} ${FILESDIR}/PLIST.gmp >> ${PLIST}
.endif
.endif
.if defined(WITH_TOOLS) && ${WITH_TOOLS} == YES
	@${CAT} ${FILESDIR}/PLIST.Tools >> ${PLIST}
.endif
	@sort -r -o ${PLIST} ${PLIST}
