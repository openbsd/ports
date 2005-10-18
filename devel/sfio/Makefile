# $OpenBSD: Makefile,v 1.3 2005/10/18 19:08:31 espie Exp $

COMMENT=	"Safe/Fast I/O Library"

VERSION=	2002
PKGNAME=	sfio-${VERSION}
DISTNAME=	sfio_${VERSION}.src.unix_tar
CATEGORIES=	devel
HOMEPAGE=	http://www.research.att.com/sw/tools/sfio/

MASTER_SITES=	http://mirror.csoft.org/sfio/
EXTRACT_SUFX=	.tar

MAINTAINER=	Wilbern Cobb <wcobb@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

post-extract:
	cd ${WRKDIR} && ln -s . ${DISTNAME}
	cd ${WRKDIR}/man/man3 && \
	    perl -pi -e 's/(\\fI|\\fP)//g' sfio.3

do-build:
	cd ${WRKDIR}/src/lib/sfio && \
	    env PATH="${WRKDIR}/bin:${PATH}" \
	    ${MAKE} CCMODE="${CFLAGS}" \
	    vthread libsfio.a libstdio.a libsfio-mt.a libstdio-mt.a

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/sfio

do-install:
	cd ${WRKDIR}/src/lib/sfio && \
	    env PATH="${WRKDIR}/bin:${PATH}" ${MAKE} \
	    INCDIR="${PREFIX}/include/sfio" \
	    LIBDIR="${PREFIX}/lib" \
	    BINDIR="${PREFIX}/bin" \
	    install_unithreaded install_multithreaded
	${INSTALL_MAN} ${WRKDIR}/man/man3/sfio.3 ${PREFIX}/man/man3

do-regress:
	cd ${WRKDIR}/src/lib/sfio/Sfio_t && ./runtest -mt -lpthread

.include <bsd.port.mk>
