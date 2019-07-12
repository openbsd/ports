# $OpenBSD: Makefile,v 1.12 2019/07/12 20:46:01 sthen Exp $

COMMENT=	Safe/Fast I/O Library

VERSION=	2002
PKGNAME=	sfio-${VERSION}
REVISION =	3
DISTNAME=	sfio_${VERSION}.src.unix_tar
CATEGORIES=	devel

MASTER_SITES=	http://mirror.csoft.org/sfio/
EXTRACT_SUFX=	.tar

PERMIT_PACKAGE=	Yes

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

do-test:
	cd ${WRKDIR}/src/lib/sfio/Sfio_t && ./runtest -mt -lpthread

.include <bsd.port.mk>
