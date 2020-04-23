# $OpenBSD: Makefile,v 1.80 2020/04/23 06:33:13 ajacoutot Exp $

NOT_FOR_ARCHS=		${GCC3_ARCHS}

COMMENT-main=		International Components for Unicode
COMMENT-wwwdata=	ICU data file for use with /var/www chroot jails

VERSION=		67.1
DISTNAME=		icu4c-${VERSION:S/./_/g}-src
PKGNAME-main=		icu4c-${VERSION}
PKGNAME-wwwdata=	icu4c-wwwdata-${VERSION}

# XXX libicudata is not recognized as a SHARED_LIBS by the ports tools because
# it's missing the '.note.openbsd.ident' section ("-nodefaultlibs -nostdlib" in
# LDFLAGS); @lib and LIBicudata_VERSION must be added manually;
# (see ports/infrastructure/lib/OpenBSD/FS2.pm)
MAJ_V=			${VERSION:R}
SO_VERSION=		18.0
.for _lib in icudata icui18n icuio icutest icutu icuuc
SHARED_LIBS+=		${_lib} ${SO_VERSION}
.endfor
SUBST_VARS+=		MAJ_V VERSION

CATEGORIES=		textproc devel
DPB_PROPERTIES=		parallel

HOMEPAGE=		http://www.icu-project.org

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# ICU: http://source.icu-project.org/repos/icu/icu/trunk/license.html
PERMIT_PACKAGE=		Yes

WANTLIB-main=		c m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=		https://github.com/unicode-org/icu/releases/download/release-${VERSION:S/./-/g}/

EXTRACT_SUFX=		.tgz

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-static \
			--disable-renaming \
			--disable-samples \
			--with-data-packaging=archive
# needs icu-le-hb
CONFIGURE_ARGS +=	--disable-layoutex

SEPARATE_BUILD=		Yes
WRKDIST=		${WRKDIR}/icu
WRKSRC=			${WRKDIST}/source

MULTI_PACKAGES=		-main -wwwdata
DEBUG_PACKAGES=		-main

# see readme.html
CXXFLAGS +=		-DICU_NO_USER_DATA_OVERRIDE

MAKE_FLAGS=		VERBOSE=1 \
			SO_TARGET_VERSION=${SO_VERSION} \
			SO_TARGET_VERSION_MAJOR=${SO_VERSION:R} \
			PKGDATA_INVOKE_OPTS="SO_TARGET_VERSION=${SO_VERSION} SO_TARGET_VERSION_MAJOR=${SO_VERSION:R}"

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mbe}
ENDIAN_DATA =		icudt${MAJ_V}b
# https://bugzilla.redhat.com/show_bug.cgi?id=889781
CONFIGURE_ENV +=	CPPFLAGS="-DU_IS_BIG_ENDIAN=1"
.else
ENDIAN_DATA =		icudt${MAJ_V}l
.endif

PREFIX-wwwdata =	/var/www${TRUEPREFIX}
SUBST_VARS +=		ENDIAN_DATA
TEST_ENV +=		ICU_DATA="${WRKBUILD}/data/out/build/${ENDIAN_DATA}"

TEST_DEPENDS=		${BASE_PKGPATH}=${VERSION}

post-install:
	find ${PREFIX}/lib -type l -name 'libicu*.so*' -delete
	${INSTALL_DATA_DIR} ${WRKINST}/var/www${TRUEPREFIX}/share/icu/${VERSION}
	${INSTALL_DATA} ${PREFIX}/share/icu/${VERSION}/${ENDIAN_DATA}.dat \
		${WRKINST}/var/www${TRUEPREFIX}/share/icu/${VERSION}/

.include <bsd.port.mk>
