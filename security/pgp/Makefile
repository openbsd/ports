# $OpenBSD: Makefile,v 1.24 2000/09/07 05:44:32 brad Exp $

DISTNAME=	pgp263is
PKGNAME=	pgp-2.6.3
CATEGORIES=	security
NEED_VERSION=	1.320
MASTER_SITES=	http://the.wiretapped.net/security/cryptography/pgp/2.x/src/ \
		ftp://ftp.ifi.uio.no/pub/pgp/2.x/src/ \
		ftp://ftp.dk.pgpi.com/mirrors/ftp.ifi.uio.no/pub/pgp/2.x/src/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	"no commercial use"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no commercial use"
PERMIT_DISTFILES_FTP=	Yes

PGP_DOC_DIR=	${PREFIX}/share/doc/pgp

WRKDIST=	${WRKDIR}/src

# library and doc files to install
LIBFILES= config.txt de.hlp en.hlp es.hlp fr.hlp keys.asc \
	language.txt pgp.hlp

DOCS=	appnote.doc blurb.txt changes.doc faq.txt keyserv.doc \
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
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE} -f makefile all \
	  CFLAGS="${CFLAGS} -DUNIX -DPORTABLE -DMERIT -DIDEA32 \
		-DMAX_NAMELEN=255 -DPGP_DOC_DIR=\\\"${PGP_DOC_DIR}\\\" \
		`cat ${WRKDIR}/.endian`"

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pgp
	${INSTALL_DATA_DIR} ${PGP_DOC_DIR}
	${INSTALL_PROGRAM} ${WRKSRC}/pgp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIR}/doc/pgp.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKDIR}/setup.doc ${PGP_DOC_DIR}
	cd ${WRKDIR}; ${INSTALL_DATA} ${LIBFILES} ${PREFIX}/lib/pgp
	cd ${WRKDIR}/doc; ${INSTALL_DATA} ${DOCS} ${PGP_DOC_DIR}

.include <bsd.port.mk>
