# $OpenBSD: Makefile,v 1.56 2006/10/21 13:51:15 espie Exp $
# $FreeBSD: Makefile,v 1.2 1998/09/23 16:15:53 vanilla Exp $

COMMENT=	"generic shared library support script"
COMMENT-ltdl=	"GNU libtool system independent dlopen wrapper"

VERSION=	1.5.22
DISTNAME=	libtool-${VERSION}
PKGNAME=	${DISTNAME}p3
PKGNAME-ltdl=	libltdl-${VERSION}p1
SHARED_LIBS=		ltdl 4.3
MODGNU_SHARED_LIBS=	ltdl '-no-undefined'

CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=libtool/}

HOMEPAGE=	http://www.gnu.org/software/libtool/

AUTOCONF_VERSION= 2.59
BUILD_DEPENDS+=	${MODGNU_AUTOCONF_DEPENDS}

MAINTAINER=	Brad Smith <brad@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		 --infodir=${PREFIX}/info
FAKE_FLAGS=	 ${MAKE_FLAGS} DESTDIR=${WRKINST}

MULTI_PACKAGES=	-ltdl
SUBPACKAGE?=

.if defined(PACKAGING)
. if empty(SUBPACKAGE)
RUN_DEPENDS+=	::devel/libtool,-ltdl
. endif
.endif

do-regress:
	cd ${WRKDIR}/bin && ln -sf ${LOCALBASE}/bin/autoconf-2.59 autoconf
	cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} check

.include <bsd.port.mk>
