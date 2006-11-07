# $OpenBSD: Makefile,v 1.2 2006/11/07 10:55:43 espie Exp $

COMMENT=	"free peer-reviewed portable C++ source libraries"

VERSION=	1.33.1
DISTNAME=	boost_${VERSION:S/./_/g}
PKGNAME=	boost-${VERSION}p0

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

WANTLIB=	z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=boost/}

MAKE_ENV=	GCC="${CC}" GXX="${CXX}"

REGRESS_TARGET=	check

do-configure:
	@cd ${WRKSRC}/libs/config && \
		${SETENV} ${CONFIGURE_ENV} /bin/sh ./configure && \
        	cp user.hpp ${WRKSRC}/boost/config

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

	cd ${WRKSRC} && \
		cp -pR boost ${PREFIX}/include
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/include

.include <bsd.port.mk>
