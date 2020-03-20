# $OpenBSD: Makefile,v 1.83 2020/03/20 16:44:28 naddy Exp $

COMMENT-main=		Skyrix Object Publishing Environment
COMMENT-mysql=		SOPE MySQL adaptor
COMMENT-postgres=	SOPE PostgreSQL adaptor

VERSION =		4.3.0
DISTNAME =		SOPE-${VERSION}
PKGNAME-main =		sope-${VERSION}
PKGNAME-mysql =		sope-mysql-${VERSION}
PKGNAME-postgres =	sope-postgres-${VERSION}

SO_MAJOR=	6
SO_MINOR=	0
.for _lib in DOM EOControl GDLAccess NGExtensions NGLdap NGMime \
		NGObjWeb NGStreams SaxObjC WEExtensions \
		WOExtensions XmlRpc SBJson
SHARED_LIBS+=   ${_lib} ${SO_MAJOR}.${SO_MINOR}
.endfor

CATEGORIES=	www
HOMEPAGE=	https://sogo.nu
MASTER_SITES=	${HOMEPAGE}/files/downloads/SOGo/Sources/
MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# LGPLv2 or later
PERMIT_PACKAGE=	Yes

MULTI_PACKAGES=	-main -mysql -postgres

MODULES=	x11/gnustep
MODGNUSTEP_NEEDS_GUI=	No

BUILD_DEPENDS =		shells/bash

WANTLIB-main = 		c crypto ssl iconv lber ldap lzma xml2 z \
			${COMPILER_LIBCXX} ${MODGNUSTEP_WANTLIB}
WANTLIB-mysql = 	GDLAccess mariadb \
			${COMPILER_LIBCXX} ${MODGNUSTEP_WANTLIB}
WANTLIB-postgres = 	GDLAccess EOControl pq ${COMPILER_LIBCXX} \
			${MODGNUSTEP_WANTLIB}

LIB_DEPENDS-main=	x11/gnustep/base \
			databases/openldap \
			x11/gnustep/libobjc2 \
			converters/libiconv
LIB_DEPENDS-mysql =	${BASE_PKGPATH}=${VERSION} \
			databases/mariadb,-main
LIB_DEPENDS-postgres =	${BASE_PKGPATH}=${VERSION} \
			databases/postgresql,-main

CONFIGURE_STYLE=simple dest
CONFIGURE_ARGS+=--prefix=${PREFIX} \
		--gsmake=`gnustep-config --variable=GNUSTEP_MAKEFILES`
MAKE_ENV+=	OBJC_INCLUDE_PATH="${LOCALBASE}/include/postgresql;${LOCALBASE}/include" \
		LIBRARY_PATH="${LOCALBASE}/lib/postgresql;${LOCALBASE}/lib" \
		SBJson_INTERFACE_VERSION=${LIBSBJson_VERSION}
MAKE_FLAGS+=	MAJOR_VERSION=${SO_MAJOR} MINOR_VERSION=${SO_MINOR}
MAKE_FLAGS+=	SOPE_MAJOR_VERSION=4 SOPE_MINOR_VERSION=9
MAKE_FLAGS+=	LDFLAGS="-fuse-ld=bfd"
CONFIGURE_ENV+=	${MAKE_ENV}
NO_TEST=	Yes

WRKDIST =	${WRKDIR}/SOPE

post-extract:
	# those fhs.make files are not needed and may cause harm if they exist
	@find ${WRKSRC} -name fhs.make -delete

post-patch:
	${SUBST_CMD} ${WRKSRC}/configure

.include <bsd.port.mk>
