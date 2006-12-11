# $OpenBSD: Makefile,v 1.5 2006/12/11 21:42:30 deanna Exp $

COMMENT-main=	"free peer-reviewed portable C++ source libraries (headers)"
COMMENT-libs=	"free peer-reviewed portable C++ source libraries (libraries)"

PKGNAME-main=	boost-headers-${VERSION}p1
PKGNAME-libs=	boost-libs-${VERSION}p0

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

MAINTAINER=	Deanna Phillips <deanna@openbsd.org>

# MIT-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=boost/}

# this lib does not support BOOST_NO_EXCEPTIONS
.if ${MACHINE_ARCH} == "alpha"
PKG_ARGS+=-Dserialization=0
CONFIGURE_ARGS=--without-libraries=serialization
.else
PKG_ARGS+=-Dserialization=1
.endif

CONFIGURE_ARGS+=--without-libraries=python

MAKE_ENV=	GCC="${CC}" GXX="${CXX}"

REGRESS_TARGET=	check

MULTI_PACKAGES=	-main -libs

WANTLIB-libs=	z c

do-configure:
	@cd ${WRKSRC}/libs/config && \
		${SETENV} ${CONFIGURE_ENV} /bin/sh ./configure && \
		cp user.hpp ${WRKSRC}/boost/config

post-configure:
	@cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} /bin/sh ./configure \
		${CONFIGURE_ARGS}

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
