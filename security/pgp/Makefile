# $OpenBSD: Makefile,v 1.22 2000/05/31 12:09:38 espie Exp $

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

.if defined(USA_RESIDENT)
.if ${USA_RESIDENT:L} == "yes"
FLAVOR=usa
.elif ${USA_RESIDENT:L} == "no"
FLAVOR=intl
.endif
.endif

# No default flavor, error.
FLAVOR?=
.if empty(FLAVOR)
pre-fetch pre-extract:
	@echo ""
	@echo "The variable USA_RESIDENT must be set to either Yes or No"
	@echo "in order to build this package.  USA residents that are"
	@echo "not licensees of the RSA algorithm MUST set this variable"
	@echo "to Yes.  Users outside the USA MUST set this variable to"
	@echo "No.  Licensees may choose -- No is faster."
	@echo ""
	@echo "RSAREF2 will be automatically obtained and used to generate"
	@echo "this program when given the command \"make USA_RESIDENT=Yes\""
	@echo ""
	@echo "The new port flavor system also allows you to use "
	@echo "FLAVOR=usa or FLAVOR=intl"
	@false
.endif


# common C flags
CFLAGS+=-DUNIX -DPORTABLE -DMERIT -DIDEA32 -DMAX_NAMELEN=255 \
	-DPGP_DOC_DIR=\\\"${PGP_DOC_DIR}\\\"

.if ${FLAVOR:L} == "usa"
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
	@cd ${WRKSRC} && env -i ${MAKE_ENV} make -f makefile all \
	  RSAOBJS="${RSAOBJS}" RSALIBS="${RSALIBS}" \
	  CFLAGS="${CFLAGS} `cat ${WRKDIR}/.endian`" 

do-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/lib/pgp
	@${INSTALL_DATA_DIR} ${PGP_DOC_DIR}
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
