# $OpenBSD: Makefile,v 1.73 2009/11/17 10:15:35 espie Exp $
# $FreeBSD: Makefile,v 1.2 1998/09/23 16:15:53 vanilla Exp $

COMMENT-main=	generic shared library support script
COMMENT-ltdl=	GNU libtool system independent dlopen wrapper

VERSION=	1.5.26
DISTNAME=	libtool-${VERSION}
PKGNAME-main=	${DISTNAME}p2
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
		 --infodir=${PREFIX}/info

# Strictly speaking, forcing GREP in MAKE_ENV should suffice, since the
# libtool reconfigures during the build. But we want to play it safe for
# future changes/updates, so force GREP in CONFIGURE_ENV, too.
CONFIGURE_ENV=	GREP=/usr/bin/grep lt_cv_path_SED=/usr/bin/sed
MAKE_ENV=	GREP=/usr/bin/grep lt_cv_path_SED=/usr/bin/sed

MULTI_PACKAGES=	-main -ltdl

RUN_DEPENDS-main=	::devel/libtool,-ltdl

do-regress:
	cd ${WRKDIR}/bin && ln -sf ${LOCALBASE}/bin/autoconf-2.61 autoconf
	cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} check

.include <bsd.port.mk>
