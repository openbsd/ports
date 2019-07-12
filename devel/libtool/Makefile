# $OpenBSD: Makefile,v 1.85 2019/07/12 20:44:40 sthen Exp $

COMMENT-main=	generic shared library support script
COMMENT-ltdl=	GNU libtool system independent dlopen wrapper

VERSION=	2.4.2
DISTNAME=	libtool-${VERSION}
PKGNAME-main=	${DISTNAME}
PKGNAME-ltdl=	libltdl-${VERSION}
REVISION-main=	0
REVISION-ltdl=	1
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=libtool/}

SHARED_LIBS=	ltdl	5.0

HOMEPAGE=	https://www.gnu.org/software/libtool/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2+
PERMIT_PACKAGE=	Yes

AUTOCONF_VERSION= 2.67
BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS}

MAKE_ENV+= ${_lt_libs}
MAKE_FLAGS+= ${_lt_libs}

# do not set libtool(1) to /usr/bin/libtool, for obvious reasons
USE_LIBTOOL=	No

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	GREP=/usr/bin/grep \
		ac_cv_f77_compiler_gnu=yes \
		lt_cv_prog_compiler_c_o_F77=yes \
		lt_cv_prog_compiler_pic_works_F77=yes \
		lt_cv_prog_compiler_static_works_F77=yes \
		ac_cv_prog_F77=g77 \
		ac_cv_prog_f77_g=yes

MULTI_PACKAGES=	-main -ltdl

RUN_DEPENDS-main=	devel/libtool,-ltdl

pre-configure:
	@cd ${WRKDIR}/bin && ln -sf /usr/bin/true g77

do-test:
	@cd ${WRKDIR}/bin && ln -sf \
	    ${LOCALBASE}/bin/autoconf-${AUTOCONF_VERSION} autoconf
	@cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} check

.include <bsd.port.mk>
