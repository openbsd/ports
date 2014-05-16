# $OpenBSD: Makefile,v 1.38 2014/05/16 14:54:16 giovanni Exp $

COMMENT-main=		Skyrix Object Publishing Environment
COMMENT-mysql=		SOPE MySQL adaptor
COMMENT-postgres=	SOPE PostgreSQL adaptor

VERSION =		2.1.1
DISTNAME =		SOPE-${VERSION}b
PKGNAME-main =		sope-${VERSION}.1
REVISION-main =		0
PKGNAME-mysql =		sope-mysql-${VERSION}.1
PKGNAME-postgres =	sope-postgres-${VERSION}.1

SO_MAJOR=	2
SO_MINOR=	1
.for _lib in DOM EOControl GDLAccess NGExtensions NGLdap NGMime \
		NGObjWeb NGStreams SaxObjC WEExtensions \
		WOExtensions XmlRpc SBJson
SHARED_LIBS+=   ${_lib} ${SO_MAJOR}.${SO_MINOR}
.endfor

CATEGORIES=	www
HOMEPAGE=	http://www.sogo.nu
MASTER_SITES=	${HOMEPAGE}/files/downloads/SOGo/Sources/
MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# LGPLv2 or later
PERMIT_PACKAGE_CDROM=   Yes

MULTI_PACKAGES=	-main -mysql -postgres

MODULES=	converters/libiconv x11/gnustep
MODGNUSTEP_NEEDS_GUI=	No

WANTLIB-main = 		gnustep-base m objc2 c pthread crypto ssl z lber ldap xml2 \
			${MODLIBICONV_WANTLIB}

WANTLIB-mysql = 	gnustep-base m objc2 pthread GDLAccess \
			mysqlclient crypto ssl z
WANTLIB-postgres = 	gnustep-base m objc2 pthread GDLAccess EOControl pq

LIB_DEPENDS-main=	x11/gnustep/base \
			databases/openldap \
			x11/gnustep/libobjc2 \
			${MODLIBICONV_LIB_DEPENDS}
LIB_DEPENDS-mysql =	${BASE_PKGPATH}=${VERSION}.1 \
			databases/mysql,-main
LIB_DEPENDS-postgres =	${BASE_PKGPATH}=${VERSION}.1 \
			databases/postgresql,-main

CONFIGURE_STYLE=simple dest
CONFIGURE_ARGS+=--prefix=${PREFIX} \
		--gsmake=`gnustep-config --variable=GNUSTEP_MAKEFILES`
MAKE_ENV+=	OBJC_INCLUDE_PATH="${LOCALBASE}/include/postgresql;${LOCALBASE}/include" \
		LIBRARY_PATH="${LOCALBASE}/lib/postgresql;${LOCALBASE}/lib" \
		SBJson_INTERFACE_VERSION=${LIBSBJson_VERSION}
MAKE_FLAGS+=	MAJOR_VERSION=${SO_MAJOR} MINOR_VERSION=${SO_MINOR}
MAKE_FLAGS+=	SOPE_MAJOR_VERSION=4 SOPE_MINOR_VERSION=9
CONFIGURE_ENV+=	${MAKE_ENV}
NO_TEST=	Yes

WRKDIST =	${WRKDIR}/SOPE

post-extract:
	# those fhs.make files are not needed and may cause harm if they exist
	@find ${WRKSRC} -name fhs.make -exec rm {} \;

.include <bsd.port.mk>
