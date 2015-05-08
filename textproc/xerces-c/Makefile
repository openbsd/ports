# $OpenBSD: Makefile,v 1.9 2015/05/08 09:08:44 espie Exp $

COMMENT=	c++ validating XML parser

DISTNAME=	xerces-c-src_2_8_0
PKGNAME=	xerces-c-2.8.0
REVISION=	2
CATEGORIES=	textproc devel

SO_VERSION=	0.0 # .28.0
.for _lib in xerces-c xerces-depdom
SHARED_LIBS+=	${_lib} ${SO_VERSION}
.endfor

HOMEPAGE=	http://xerces.apache.org/index.html

# Apache 2.0
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=	http://apache.mirrors.crysys.hit.bme.hu/xerces/c/2/sources/

USE_GMAKE=	Yes

WANTLIB=	m stdc++

XERCESCROOT=	${WRKDIR}/${DISTNAME}
WRKSRC=		${XERCESCROOT}/src/xercesc

# runConfigure is a wrapper around a GNU configure script.  In order to still
# pick up our config.site defaults, use the gnu MODULE.
MODULES =	gnu

CONFIGURE_SCRIPT= ${XERCESCROOT}/src/xercesc/runConfigure
CONFIGURE_STYLE= simple
CONFIGURE_ENV=	XERCESCROOT="${XERCESCROOT}"
CONFIGURE_ARGS=	-p openbsd -c ${CC} -x ${CXX} -m inmem -n socket \
		-t native -r none -P ${PREFIX}

MAKE_ENV=	XERCESCROOT="${XERCESCROOT}"
MAKE_FLAGS=	SO_TARGET_VERSION=${SO_VERSION:R} \
		SO_TARGET_VERSION_MAJOR=${SO_VERSION:E} \
		VERBOSE=1

post-extract:
	mkdir -p ${WRKSRC}/util/Platforms/OpenBSD
	cp ${WRKSRC}/util/Platforms/NetBSD/NetBSDPlatformUtils.cpp \
		${WRKSRC}/util/Platforms/OpenBSD/OpenBSDPlatformUtils.cpp
	cp ${FILESDIR}/{Makefile.in,OpenBSDDefs.hpp} \
		${WRKSRC}/util/Platforms/OpenBSD/
	chmod 0644 ${WRKSRC}/util/Platforms/OpenBSD/{Makefile.in,OpenBSDDefs.hpp}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile.incl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xerces-c
	cp -R ${XERCESCROOT}/doc/html ${PREFIX}/share/doc/xerces-c
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/doc/xerces-c \
		${PREFIX}/include/xercesc \
		${PREFIX}/lib/*

do-test:
	cd ${XERCESCROOT}/tests && \
		XERCESCROOT="${XERCESCROOT}" ./runConfigure -p openbsd -c ${CC} -x ${CXX} -r none && \
		XERCESCROOT="${XERCESCROOT}" ${MAKE_PROGRAM}
	cd ${XERCESCROOT}/samples && \
		XERCESCROOT="${XERCESCROOT}" ./runConfigure -p openbsd -c ${CC} -x ${CXX} -r none && \
		XERCESCROOT="${XERCESCROOT}" ${MAKE_PROGRAM}
	cd ${XERCESCROOT}/samples/data && \
		PATH=${PATH}:${XERCESCROOT}/bin perl ../../scripts/sanityTest.pl

.include <bsd.port.mk>
