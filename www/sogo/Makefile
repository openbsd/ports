COMMENT = 	web based groupware server

VERSION =	5.10.0
DISTNAME =	SOGo-${VERSION}
PKGNAME =	sogo-${VERSION}

SHARED_LIBS +=	GDLContentStore 3.0
SHARED_LIBS +=	NGCards		3.1
SHARED_LIBS +=	SOGo		5.2
SHARED_LIBS +=	SOGoUI		2.2

CATEGORIES =	www
HOMEPAGE =	https://sogo.nu/
SITES =		https://packages.sogo.nu/sources/
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# LGPLv2/GPLv2
PERMIT_PACKAGE =		Yes

MODULES =		x11/gnustep
MODGNUSTEP_NEEDS_GUI =	No

WANTLIB +=		c m pthread crypto memcached SBJson
WANTLIB +=		DOM EOControl GDLAccess NGExtensions NGLdap
WANTLIB +=		NGMime NGObjWeb NGStreams SaxObjC WEExtensions
WANTLIB +=		objc2 gnustep-base curl oath sodium ytnef zip
WANTLIB += ${COMPILER_LIBCXX}

CFLAGS_base-clang =	-Wno-error=int-conversion

LIB_DEPENDS +=		archivers/libzip \
			converters/libytnef \
			devel/libmemcached \
			net/curl \
			security/libsodium \
			security/oath-toolkit \
			www/sope>=${VERSION}
RUN_DEPENDS +=		sope-postgres-*|sope-mysql-*:www/sope,-postgres \
			archivers/zip \
			shells/bash

CONFIGURE_STYLE =	simple dest
CONFIGURE_ARGS +=	--gsmake=`gnustep-config --variable=GNUSTEP_MAKEFILES` \
			--with-ssl=ssl --enable-mfa
MAKE_FLAGS +=		libGDLContentStore_INTERFACE_VERSION=${LIBGDLContentStore_VERSION} \
			libNGCards_INTERFACE_VERSION=${LIBNGCards_VERSION} \
			libOGoContentStore_INTERFACE_VERSION=${LIBOGoContentStore_VERSION} \
			libSOGoUI_INTERFACE_VERSION=${LIBSOGoUI_VERSION} \
			SOGo_INTERFACE_VERSION=${LIBSOGo_VERSION}

SOGOLIBDIR =	lib/GNUstep/Frameworks/SOGo.framework/Versions/${LIBSOGo_VERSION}
SUBST_VARS +=	SOGOLIBDIR

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sogo
	cd ${WRKSRC}/Scripts; ${INSTALL_SCRIPT} \
	    -c -o ${SHAREOWN} -g ${SHAREGRP} \
	    cas-proxy-validate.py updates.php sql-update*.sh \
	    ${PREFIX}/share/doc/sogo/
	sed -i 's,#!/bin/bash,#!${LOCALBASE}/bin/bash,'	\
	    ${PREFIX}/share/doc/sogo/sql-update*.sh

do-test:
	cd ${WRKSRC}/Tests/Integration && ${MAKE_PROGRAM} && ./teststrings.sh
	cd ${WRKSRC}/Tests/Unit && ${MAKE_PROGRAM} && obj/sogo-tests

.include <bsd.port.mk>
