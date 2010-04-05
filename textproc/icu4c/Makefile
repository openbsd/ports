# $OpenBSD: Makefile,v 1.11 2010/04/05 21:40:24 landry Exp $

COMMENT=		International Components for Unicode

VERSION=		4.4
DISTNAME=		icu4c-${VERSION:S/./_/g}-src
PKGNAME=		icu4c-${VERSION}
SO_VERSION=		3.0
.for _lib in icudata icui18n icuio icule iculx icutest icutu icuuc
SHARED_LIBS+=		${_lib} ${SO_VERSION}
.endfor
SUBST_VARS+=		VERSION
CATEGORIES=		textproc devel

HOMEPAGE=		http://www.icu-project.org

MAINTAINER=		Vincent Gross <dermiste@screwball-coders.net>

# ICU
# http://source.icu-project.org/repos/icu/icu/trunk/license.html
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m pthread stdc++

MASTER_SITES=		http://download.icu-project.org/files/icu4c/${VERSION}/ \
			${MASTER_SITE_SOURCEFORGE:=icu/}
EXTRACT_SUFX=		.tgz

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-static \
			--disable-renaming \
			--disable-extras \
			--disable-samples

SEPARATE_BUILD=		concurrent

WRKDIST=		${WRKDIR}/icu
WRKSRC=			${WRKDIST}/source

MAKE_FLAGS+=		SO_TARGET_VERSION=${SO_VERSION} \
			SO_TARGET_VERSION_MAJOR=${SO_VERSION:R} \
			PKGDATA_INVOKE_OPTS="SO_TARGET_VERSION=${SO_VERSION} SO_TARGET_VERSION_MAJOR=${SO_VERSION:R}"

post-install:
# Bug #7506, #7567 and #7574, libicutest is not installed
	${INSTALL_PROGRAM} ${WRKBUILD}/tools/ctestfw/libicutest.a ${PREFIX}/lib/
	${INSTALL_PROGRAM} ${WRKBUILD}/tools/ctestfw/libicutest.so.3.0 ${PREFIX}/lib/
# who needs those annoying symlinks ?
	find ${PREFIX}/lib -type l -name 'libicu*.so*' -exec rm '{}' \;

.include <bsd.port.mk>
