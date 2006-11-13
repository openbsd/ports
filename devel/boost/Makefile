# $OpenBSD: Makefile,v 1.3 2006/11/13 21:52:52 wilfried Exp $

COMMENT=	"free peer-reviewed portable C++ source libraries (headers)"
COMMENT-libs=	"free peer-reviewed portable C++ source libraries (libraries)"

FULLPKGNAME=	boost-headers-${VERSION}
PKGNAME-libs=	boost-libs-${VERSION}

VERSION=	1.33.1
DISTNAME=	boost_${VERSION:S/./_/g}

SHARED_LIBS=	boost_date_time			0.0 \
		boost_date_time-mt		0.0 \
		boost_filesystem		0.0 \
		boost_filesystem-mt		0.0 \
		boost_iostreams			0.0 \
		boost_iostreams-mt		0.0 \
		boost_prg_exec_monitor		0.0 \
		boost_prg_exec_monitor-mt	0.0 \
		boost_program_options		0.0 \
		boost_program_options-mt	0.0 \
		boost_regex			0.0 \
		boost_regex-mt			0.0 \
		boost_serialization		0.0 \
		boost_serialization-mt		0.0 \
		boost_signals			0.0 \
		boost_signals-mt		0.0 \
		boost_test_exec_monitor		0.0 \
		boost_test_exec_monitor-mt	0.0 \
		boost_thread-mt			0.0 \
		boost_unit_test_framework	0.0 \
		boost_unit_test_framework-mt	0.0

CATEGORIES=	devel

HOMEPAGE=	http://www.boost.org/

MAINTAINER=	Deanna Phillips <deanna@sdf.lonestar.org>

# MIT-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=boost/}

MAKE_ENV=	GCC="${CC}" GXX="${CXX}"

REGRESS_TARGET=	check

MULTI_PACKAGES=-libs
SUBPACKAGE?=

.if defined(PACKAGING) && empty(SUBPACKAGE)
PKG_ARCH=	*
.else
WANTLIB=	z c
.endif

do-configure:
	@cd ${WRKSRC}/libs/config && \
		${SETENV} ${CONFIGURE_ENV} /bin/sh ./configure && \
		cp user.hpp ${WRKSRC}/boost/config

post-configure:
	@cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} /bin/sh ./configure \
		--without-libraries=python

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tools/build/jam_src/bin.*/bjam \
		${PREFIX}/bin

	find ${WRKSRC}/bin/boost/libs -name "libboost*" -type f \
		-exec ${INSTALL_DATA} \{\} ${PREFIX}/lib \;

	cd ${PREFIX}/lib && \
		for LIBS in libboost*; do \
			mv $$LIBS \
			`echo $$LIBS | perl -pi -e "s,-gcc(-mt)?(-d)?-${VERSION:S/./_/g},\1\2,"`; \
		done

	@cd ${WRKSRC} && \
		find boost -type d -exec ${INSTALL_DATA_DIR} ${PREFIX}/include/{} \;
	@cd ${WRKSRC} && \
		find boost -type f -exec ${INSTALL_DATA} {} ${PREFIX}/include/{} \;

.include <bsd.port.mk>
