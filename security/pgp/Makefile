# $OpenBSD: Makefile,v 1.12 1999/12/09 02:50:41 brad Exp $

DISTNAME=       pgp263is
PKGNAME=	pgp-2.6.3
CATEGORIES=	security
MASTER_SITES=	http://the.wiretapped.net/security/cryptography/pgp/2.x/src/ \
		ftp://ftp.ifi.uio.no/pub/pgp/2.x/src/ \
		ftp://ftp.dk.pgpi.com/mirrors/ftp.ifi.uio.no/pub/pgp/2.x/src/
MASTER_SITES0=	http://the.wiretapped.net/security/cryptography/libs/rsa/ \
		ftp://idea.dsi.unimi.it/pub/security/crypt/math/ \
		ftp://ftp.it.net.au/mirrors/crypto/misc

PATCH_LIST=	patch-doc

MAINTAINER=	ports@openbsd.org

NO_CDROM=	"CRYPTO: Third party crypto not allowed."
RESTRICTED=	"Crypto; export-controlled"

IS_INTERACTIVE=	yes
WRKSRC=	${WRKDIR}/src

# common C flags
CFLAGS+=-DUNIX -DPORTABLE -DMERIT -DIDEA32 -DMAX_NAMELEN=255 \
	-DPGP_DOC_DIR=\\\"${PGP_DOC_DIR}\\\"

.if defined(USA_RESIDENT) && ${USA_RESIDENT:U} == YES
DISTFILES= ${DISTNAME}.tar.gz rsaref2.tar.gz:0
PATCH_LIST+= patch-rsaref2 patch-rsaref2-2
RSAOBJS= rsaglue2.o
RSADIR=	../rsaref2
RSAINCDIR= -I$(RSADIR)/source -I$(RSADIR)/test
RSALIBDIR= $(RSADIR)/install/unix
RSALIBS= $(RSALIBDIR)/rsaref.a
CFLAGS+= -DUSA ${RSAINCDIR}
.else
RSAOBJS= rsaglue1.o
.endif

PGP_DOC_DIR=	${PREFIX}/share/doc/pgp

# library and doc files to install
LIBFILES= config.txt de.hlp en.hlp es.hlp fr.hlp keys.asc \
	language.txt pgp.hlp

DOCFILES= appnote.doc blurb.txt changes.doc faq.txt keyserv.doc \
	mitlicen.txt pgformat.doc pgp262i.dif pgp263i.dif \
	pgp_vms.hlp pgpdoc1.txt pgpdoc2.txt politic.doc przon26i.asc

fetch-depends:
.if !defined(NO_WARNINGS)
.if !defined(USA_RESIDENT) || ${USA_RESIDENT:U} != YES && ${USA_RESIDENT:U} != NO
	@echo ""
	@echo "You must set variable USA_RESIDENT to YES if you are a USA"
	@echo "resident or NO otherwise.  USA residents must obtain the"
	@echo "RSAREF2 library to generate this program.  \(RSA Inc. holds"
	@echo "a patent on RSA in the USA - using RSA implementations"
	@echo "other than RSAREF in the USA will violate the US patent\)."
	@echo ""
	@echo "RSAREF2 will be automatically obtained and used to generate"
	@echo "this program when given the command \"make USA_RESIDENT=yes\""
	@echo ""
	@false
.endif
.endif

# 2nd level extract required
post-extract:
	@if ! (cd ${WRKDIR} && tar -xf pgp263ii.tar); then \
	   exit 1; \
	 fi

# Before the build figure out if we are on a big endian machine or not
pre-build:
	@echo "#include <machine/endian.h>" > ${WRKDIR}/.endian.c
	@echo "BYTE_ORDER" >> ${WRKDIR}/.endian.c
	@${CC} -E ${WRKDIR}/.endian.c > ${WRKDIR}/.endian.out
	@if { grep -q 4321 ${WRKDIR}/.endian.out; } then \
	   echo -DHIGHFIRST > ${WRKDIR}/.endian; \
	 else \
	   cp /dev/null ${WRKDIR}/.endian; \
	 fi

do-build:
.if defined(USA_RESIDENT) && ${USA_RESIDENT:U} == YES
	@(cd ${WRKDIR}/rsaref2/install/unix && \
	  env ${MAKE_ENV} make -f makefile rsaref.a)
.endif
	@(cd ${WRKSRC} && \
	  env ${MAKE_ENV} make -f makefile all \
	  RSAOBJS="${RSAOBJS}" RSADIR="${RSADIR}" RSAINCDIR="${RSAINCDIR}" \
	  RSALIBDIR="${RSALIBDIR}" RSALIBS="${RSALIBS}" \
	  CFLAGS="${CFLAGS} `cat ${WRKDIR}/.endian`" )

do-install:
	@mkdir -p ${PREFIX}/lib/pgp
	@mkdir -p ${PGP_DOC_DIR}
	${INSTALL_PROGRAM} ${WRKSRC}/pgp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIR}/doc/pgp.1 ${PREFIX}/man/man1
.for libfile in ${LIBFILES}
	${INSTALL_DATA} ${WRKDIR}/${libfile} ${PREFIX}/lib/pgp
.endfor
	${INSTALL_DATA} ${WRKDIR}/setup.doc ${PGP_DOC_DIR}
.for docfile in ${DOCFILES}
	${INSTALL_DATA} ${WRKDIR}/doc/${docfile} ${PGP_DOC_DIR}
.endfor

.include <bsd.port.mk>
