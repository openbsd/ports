# OpenBSD makefile for:	pgp
# Version required:	
# Date created:		19 Mar 1998
# Whom:			marc@OpenBSD.ORG
#
# $OpenBSD: Makefile,v 1.2 1998/03/23 01:40:06 marc Exp $

DISTNAME=       pgp263is
PKGNAME=	pgp-2.6.3
CATEGORIES=	security
MASTER_SITES=	ftp://ftp.ifi.uio.no/pub/pgp/2.x/src/ \
		ftp://ftp.dk.pgpi.com/mirrors/ftp.ifi.uio.no/pub/pgp/2.x/src/

MAINTAINER=	ports@openbsd.org

RESTRICTED=	"Crypto; export-controlled"
IS_INTERACTIVE=	YES
WRKSRC=		${WRKDIR}/src

# Need to add rsaref for US residents
#
.if defined(USA_RESIDENT) && ${USA_RESIDENT} == YES
MASTER_SITES=	\
	ftp://ftp.ifi.uio.no/pub/pgp/2.x/src/ \
	ftp://ftp.dk.pgpi.com/mirrors/ftp.ifi.uio.no/pub/pgp/2.x/src/ \
	ftp://nic.funet.fi/pub/crypt/mirrors/ftp.dsi.unimi.it/applied-crypto/ \
	ftp://idea.dsi.unimi.it/pub/security/crypt/math/
DISTFILES=	\
	${DISTNAME}${EXTRACT_SUFX} \
	rsaref2.tar.gz
.endif

fetch-depends:
.if !defined(USA_RESIDENT) || ${USA_RESIDENT} != YES && ${USA_RESIDENT} != NO
	@${ECHO}
	@${ECHO} You must set variable USA_RESIDENT to YES if you are a USA
	@${ECHO} resident or NO otherwise.  USA residents must obtain the
	@${ECHO} RSAREF2 library to generate this program.  \(RSA Inc. holds
	@${ECHO} a patent on RSA and public key cypto in general - using RSA
	@${ECHO} implementations other than RSAREF will violate the US patent
	@${ECHO} law\).
	@${ECHO} ""
	@${ECHO} RSAREF2 will be automatically obtained and used to generate
	@${ECHO} this program when given the command \"make USA_RESIDENT=YES\"
	@${ECHO} ""
	@${FALSE}
.endif

# 2nd level extract required
#
post-extract:
	@if ! ( cd ${WRKDIR} && ${EXTRACT_CMD} -xf pgp263ii.tar ); then \
	   exit 1; \
	 fi

# common C flags
#
CFLAGS=		-O2 -DUNIX -DPORTABLE -DMERIT -DIDEA32 -DMAX_NAMELEN=255

# RSAREF parameters
#
.if defined(USA_RESIDENT) && ${USA_RESIDENT} == YES
RSAOBJS=	rsaglue2.o
RSADIR=		../rsaref2
RSAINCDIR=	-I$(RSADIR)/source -I$(RSADIR)/test
RSALIBDIR=	$(RSADIR)/install/unix
RSALIBS=	$(RSALIBDIR)/rsaref.a
CFLAGS+=	-DUSA ${RSAINCDIR}
.else
RSAOBJS=	rsaglue1.o
.endif

# Before the build figure out if we are on a big endian machine or not
#
pre-build:
	@echo "#include <machine/endian.h>" > ${WRKDIR}/.endian.c
	@echo "BYTE_ORDER" >> ${WRKDIR}/.endian.c
	@${CC} -E ${WRKDIR}/.endian.c > ${WRKDIR}/.endian.out
	@if { grep -q 4321 ${WRKDIR}/.endian.out; } then \
	   echo -DHIGHFIRST > ${WRKDIR}/.endian; \
	 else \
	   ${CP} /dev/null ${WRKDIR}/.endian; \
	 fi

# Build rsaref (if USA) then pgp
#
do-build:
.if defined(USA_RESIDENT) && ${USA_RESIDENT} == YES
	@(cd ${WRKDIR}/rsaref2/install/unix && \
	  ${SETENV} ${MAKE_ENV} ${MAKE} -f makefile rsaref.a)
.endif
	@(cd ${WRKSRC} && \
	  ${SETENV} ${MAKE_ENV} ${MAKE} -f makefile all \
	  RSAOBJS="${RSAOBJS}" RSADIR="${RSADIR}" RSAINCDIR="${RSAINCDIR}" \
	  RSALIBDIR="${RSALIBDIR}" RSALIBS="${RSALIBS}" \
	  CFLAGS="${CFLAGS} `cat ${WRKDIR}/.endian`" )


# library and doc files to install
#
LIBFILES=	config.txt de.hlp en.hlp es.hlp fr.hlp keys.asc \
		language.txt pgp.hlp

DOCFILES=	appnote.doc blurb.txt changes.doc faq.txt keyserv.doc \
		mitlicen.txt pgformat.doc pgp262i.dif pgp263i.dif \
		pgp_vms.hlp pgpdoc1.txt pgpdoc2.txt politic.doc przon26i.asc

# install pgp and related doc
#
do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/pgp ${PREFIX}/bin
	@${INSTALL_MAN} ${WRKDIR}/doc/pgp.1 ${PREFIX}/man/man1
	@${MKDIR} -p ${PREFIX}/lib/pgp
.for libfile in ${LIBFILES}
	@${INSTALL_DATA} ${WRKDIR}/${libfile} ${PREFIX}/lib/pgp
.endfor
	@${MKDIR} -p ${PREFIX}/share/doc/pgp
	@${INSTALL_DATA} ${WRKDIR}/setup.doc ${PREFIX}/share/doc/pgp
.for docfile in ${DOCFILES}
	@${INSTALL_DATA} ${WRKDIR}/doc/${docfile} ${PREFIX}/share/doc/pgp
.endfor

.include <bsd.port.mk>

