# $OpenBSD: Makefile,v 1.20 2000/04/22 12:12:07 turan Exp $

DISTNAME=       pgp263is
PKGNAME=	pgp-2.6.3
CATEGORIES=	security
NEED_VERSION=	 1.230
MASTER_SITES=	http://the.wiretapped.net/security/cryptography/pgp/2.x/src/ \
		ftp://ftp.ifi.uio.no/pub/pgp/2.x/src/ \
		ftp://ftp.dk.pgpi.com/mirrors/ftp.ifi.uio.no/pub/pgp/2.x/src/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	"no commercial use"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no commercial use"
PERMIT_DISTFILES_FTP=	Yes

IS_INTERACTIVE=	Yes
WRKDIST=	${WRKDIR}/src

FAKE=		Yes

FLAVORS=	usa intl

.if defined(FLAVOR)
.if ${FLAVOR} == "usa"
USA_RESIDENT=	yes
.elif ${FLAVOR} == "intl"
USA_RESIDENT=	no
.endif
.endif

# common C flags
CFLAGS+=-DUNIX -DPORTABLE -DMERIT -DIDEA32 -DMAX_NAMELEN=255 \
	-DPGP_DOC_DIR=\\\"${PGP_DOC_DIR}\\\"

.if defined(USA_RESIDENT) && ${USA_RESIDENT:U} == YES
LIB_DEPENDS=	rsaref.2::security/rsaref
RSAOBJS= rsaglue2.o
RSAINCDIR= -I${LOCALBASE}/include
RSALIBS= -L${LOCALBASE}/lib -lrsaref
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
	@(cd ${WRKSRC} && env ${MAKE_ENV} make -f makefile all \
	  RSAOBJS="${RSAOBJS}" RSALIBS="${RSALIBS}" \
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
