# $OpenBSD: Makefile,v 1.33 2004/08/07 21:55:26 brad Exp $
# $FreeBSD: Makefile,v 1.2 1998/09/23 16:15:53 vanilla Exp $

COMMENT=	"generic shared library support script"
COMMENT-ltdl=	"GNU libtool system independent dlopen wrapper"

VERSION=	1.5.8
DISTNAME=	libtool-${VERSION}
PKGNAME-ltdl=	libltdl-${VERSION}
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

MAKE_ENV+=	MAKEINFOFLAGS="--no-split"

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}

MULTI_PACKAGES=	-ltdl
SUBPACKAGE?=

.if defined(PACKAGING)
. if empty(SUBPACKAGE)
RUN_DEPENDS+=	::devel/libtool,-ltdl
. endif
.endif

post-patch:
.for f in cdemo demo depdemo f77demo mdemo mdemo2 pdemo tagdemo
	@cp -f ${WRKSRC}/acinclude.m4 ${WRKSRC}/${f} && \
		cd ${WRKSRC}/${f} && AUTOCONF_VERSION=${AUTOCONF_VERSION} autoconf
.endfor
	@cd ${WRKSRC}/libltdl && AUTOCONF_VERSION=${AUTOCONF_VERSION} autoconf
	@cd ${WRKSRC} && AUTOCONF_VERSION=${AUTOCONF_VERSION} autoconf

pre-configure:
	@rm -f ${WRKSRC}/doc/libtool.info*

.include <bsd.port.mk>
