# $OpenBSD: Makefile,v 1.11 1999/11/24 03:23:05 brad Exp $

DISTNAME=       pgp263is
PKGNAME=	pgp-2.6.3
CATEGORIES=	security
MASTER_SITES=	http://the.wiretapped.net/security/cryptography/pgp/2.x/src/ \
		ftp://ftp.ifi.uio.no/pub/pgp/2.x/src/ \
		ftp://ftp.dk.pgpi.com/mirrors/ftp.ifi.uio.no/pub/pgp/2.x/src/
MASTER_SITES0=	http://the.wiretapped.net/security/cryptography/libs/rsa/ \
		ftp://idea.dsi.unimi.it/pub/security/crypt/math/ \
		ftp://ftp.it.net.au/mirrors/crypto/misc

NEED_VERSION=	1.121

MAINTAINER=	ports@openbsd.org

NO_CDROM=	"CRYPTO: Third party crypto not allowed."
RESTRICTED=	"Crypto; export-controlled"

IS_INTERACTIVE=	yes
WRKSRC=	${WRKDIR}/src

.if defined(NO_WARNINGS) || (defined(USA_RESIDENT) && ${USA_RESIDENT:U} == YES)
DISTFILES= ${DISTNAME}.tar.gz rsaref2.tar.gz:0
.endif

# common C flags
CFLAGS+=-DUNIX -DPORTABLE -DMERIT -DIDEA32 -DMAX_NAMELEN=255 \
	-DPGP_DOC_DIR=\\\"${PGP_DOC_DIR}\\\"

.if defined(USA_RESIDENT) && ${USA_RESIDENT:U} == YES
RSAOBJS= rsaglue2.o
RSADIR=	../rsaref2
RSAINCDIR= -I$(RSADIR)/source -I$(RSADIR)/test
RSALIBDIR= $(RSADIR)/install/unix
RSALIBS= $(RSALIBDIR)/rsaref.a
CFLAGS+= -DUSA ${RSAINCDIR}
.else
RSAOBJS= rsaglue1.o
.endif

PATCH_LIST= patch-doc
.if defined(USA_RESIDENT) && ${USA_RESIDENT:U} == YES
PATCH_LIST+= patch-rsaref2
.else
.endif

PGP_DOC_DIR=${PREFIX}/share/doc/pgp

# library and doc files to install
LIBFILES= config.txt de.hlp en.hlp es.hlp fr.hlp keys.asc \
	language.txt pgp.hlp

DOCFILES= appnote.doc blurb.txt changes.doc faq.txt keyserv.doc \
	mitlicen.txt pgformat.doc pgp262i.dif pgp263i.dif \
	pgp_vms.hlp pgpdoc1.txt pgpdoc2.txt politic.doc przon26i.asc

fetch-depends:
.if !defined(NO_WARNINGS)
.if !defined(USA_RESIDENT) || ${USA_RESIDENT:U} != YES && ${USA_RESIDENT:U} != NO
	@${ECHO}
	@${ECHO} You must set variable USA_RESIDENT to YES if you are a USA
	@${ECHO} resident or NO otherwise.  USA residents must obtain the
	@${ECHO} RSAREF2 library to generate this program.  \(RSA Inc. holds
	@${ECHO} a patent on RSA in the USA - using RSA implementations
	@${ECHO} other than RSAREF in the USA will violate the US patent\).
	@${ECHO} ""
	@${ECHO} RSAREF2 will be automatically obtained and used to generate
	@${ECHO} this program when given the command \"make USA_RESIDENT=YES\"
	@${ECHO} ""
	@${FALSE}
.endif
.endif

# 2nd level extract required
post-extract:
	@if ! (cd ${WRKDIR} && ${TAR} -xf pgp263ii.tar); then \
	   exit 1; \
	 fi

# Before the build figure out if we are on a big endian machine or not
pre-build:
	@${ECHO} "#include <machine/endian.h>" > ${WRKDIR}/.endian.c
	@${ECHO} "BYTE_ORDER" >> ${WRKDIR}/.endian.c
	@${CC} -E ${WRKDIR}/.endian.c > ${WRKDIR}/.endian.out
	@if { ${GREP} -q 4321 ${WRKDIR}/.endian.out; } then \
	   ${ECHO} -DHIGHFIRST > ${WRKDIR}/.endian; \
	 else \
	   ${CP} /dev/null ${WRKDIR}/.endian; \
	 fi

do-build:
.if defined(USA_RESIDENT) && ${USA_RESIDENT:U} == YES
	@(cd ${WRKDIR}/rsaref2/install/unix && \
	  ${SETENV} ${MAKE_ENV} ${MAKE} -f makefile rsaref.a)
.endif
	@(cd ${WRKSRC} && \
	  ${SETENV} ${MAKE_ENV} ${MAKE} -f makefile all \
	  RSAOBJS="${RSAOBJS}" RSADIR="${RSADIR}" RSAINCDIR="${RSAINCDIR}" \
	  RSALIBDIR="${RSALIBDIR}" RSALIBS="${RSALIBS}" \
	  CFLAGS="${CFLAGS} `${CAT} ${WRKDIR}/.endian`" )

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/pgp ${PREFIX}/bin
	@${INSTALL_MAN} ${WRKDIR}/doc/pgp.1 ${PREFIX}/man/man1
	@${MKDIR} ${PREFIX}/lib/pgp
.for libfile in ${LIBFILES}
	@${INSTALL_DATA} ${WRKDIR}/${libfile} ${PREFIX}/lib/pgp
.endfor
	@${MKDIR} ${PGP_DOC_DIR}
	@${INSTALL_DATA} ${WRKDIR}/setup.doc ${PGP_DOC_DIR}
.for docfile in ${DOCFILES}
	@${INSTALL_DATA} ${WRKDIR}/doc/${docfile} ${PGP_DOC_DIR}
.endfor

.include <bsd.port.mk>
