# $OpenBSD: Makefile,v 1.75 2010/06/12 20:56:14 naddy Exp $

COMMENT-main=	generic shared library support script
COMMENT-ltdl=	GNU libtool system independent dlopen wrapper

VERSION=	1.5.26
DISTNAME=	libtool-${VERSION}
PKGNAME-main=	${DISTNAME}p4
PKGNAME-ltdl=	libltdl-${VERSION}p0
SHARED_LIBS=		ltdl 4.5
MODGNU_SHARED_LIBS=	ltdl '-no-undefined'

CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=libtool/}

HOMEPAGE=	http://www.gnu.org/software/libtool/

AUTOCONF_VERSION= 2.61
BUILD_DEPENDS+=	${MODGNU_AUTOCONF_DEPENDS}

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		--infodir=${PREFIX}/info \
		GREP=/usr/bin/grep lt_cv_path_SED=/usr/bin/sed \
		ac_cv_prog_F77=g77 \
		ac_cv_f77_compiler_gnu=yes \
		ac_cv_prog_f77_g=yes \
		lt_cv_prog_compiler_pic_works_F77=yes \
		lt_cv_prog_compiler_static_works_F77=yes \
		lt_cv_prog_compiler_c_o_F77=yes

MULTI_PACKAGES=	-main -ltdl

RUN_DEPENDS-main=	::devel/libtool,-ltdl

pre-configure:
	cd ${WRKDIR}/bin && ln -sf /usr/bin/true g77	

do-regress:
	cd ${WRKDIR}/bin && ln -sf ${LOCALBASE}/bin/autoconf-2.61 autoconf
	cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} check

.include <bsd.port.mk>
