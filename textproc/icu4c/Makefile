# $OpenBSD: Makefile,v 1.7 2009/01/27 22:11:15 landry Exp $

SHARED_ONLY=		Yes

COMMENT=		International Components for Unicode

VERSION=		4.0.1
DISTNAME=		icu4c-${VERSION:S/./_/g}-src
PKGNAME=		icu4c-${VERSION}
SO_VERSION=		1.1
.for _lib in icudata icui18n icuio icule iculx icutu icuuc
SHARED_LIBS+=		${_lib} ${SO_VERSION}
.endfor
SUBST_VARS+=		VERSION
CATEGORIES=		textproc devel

HOMEPAGE=		http://www.icu-project.org

MAINTAINER=		Vincent Gross <dermiste@gmail.com>

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
	find ${PREFIX}/lib -type l -name 'libicu*.so*' -exec rm '{}' \;

.include <bsd.port.mk>
