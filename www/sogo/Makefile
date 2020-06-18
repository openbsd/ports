# $OpenBSD: Makefile,v 1.87 2020/06/18 21:02:20 sebastia Exp $

COMMENT = 	web based groupware server

VERSION =	4.3.2
DISTNAME =	SOGo-${VERSION}
PKGNAME =	sogo-${VERSION}

SHARED_LIBS +=	GDLContentStore 3.0
SHARED_LIBS +=	NGCards		3.1
SHARED_LIBS +=	SOGo		5.0
SHARED_LIBS +=	SOGoUI		2.2

CATEGORIES =	www
HOMEPAGE =	https://sogo.nu/
MASTER_SITES =	${HOMEPAGE}/files/downloads/SOGo/Sources/
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# LGPLv2/GPLv2
PERMIT_PACKAGE =		Yes

MODULES =		x11/gnustep
MODGNUSTEP_NEEDS_GUI =	No

WANTLIB +=		c m pthread crypto memcached SBJson
WANTLIB +=		DOM EOControl GDLAccess NGExtensions NGLdap
WANTLIB +=		NGMime NGObjWeb NGStreams SaxObjC WEExtensions
WANTLIB +=		objc2 gnustep-base curl
WANTLIB += ${COMPILER_LIBCXX}

LIB_DEPENDS +=		devel/libmemcached \
			net/curl \
			www/sope>=${VERSION}
RUN_DEPENDS +=		sope-postgres-*|sope-mysql-*:www/sope,-postgres \
			archivers/zip

.if ${MACHINE_ARCH} == "powerpc"
PATCH_LIST =		patch-* gcc-*
.endif

CONFIGURE_STYLE =	simple dest
CONFIGURE_ARGS +=	--gsmake=`gnustep-config --variable=GNUSTEP_MAKEFILES` \
			--with-ssl=ssl
MAKE_FLAGS +=		libGDLContentStore_INTERFACE_VERSION=${LIBGDLContentStore_VERSION} \
			libNGCards_INTERFACE_VERSION=${LIBNGCards_VERSION} \
			libOGoContentStore_INTERFACE_VERSION=${LIBOGoContentStore_VERSION} \
			libSOGoUI_INTERFACE_VERSION=${LIBSOGoUI_VERSION} \
			SOGo_INTERFACE_VERSION=${LIBSOGo_VERSION} \
			LDFLAGS="-fuse-ld=bfd"

SOGOLIBDIR =	lib/GNUstep/Frameworks/SOGo.framework/Versions/${LIBSOGo_VERSION}
SUBST_VARS +=	SOGOLIBDIR VARBASE

SCRIPTS = 	cas-proxy-validate.py sql-update-2.2.17_to_2.3.0.sh \
		sql-update-3.2.10_to_4.0.0.sh sql-update-2.2.17_to_2.3.0-mysql.sh \
		sql-update-3.2.10_to_4.0.0-mysql.sh sql-update-3.0.0-to-combined.sh \
		sql-update-3.0.0-to-combined-mysql.sh updates.php

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sogo
.for _s in ${SCRIPTS}
	${INSTALL_SCRIPT} -c -o ${SHAREOWN} -g ${SHAREGRP} \
		${WRKSRC}/Scripts/${_s} ${PREFIX}/share/doc/sogo/${_s}
.endfor

do-test:
	cd ${WRKSRC}/Tests/Integration && ${MAKE_PROGRAM} && ./teststrings.sh
	cd ${WRKSRC}/Tests/Unit && ${MAKE_PROGRAM} && obj/sogo-tests

.include <bsd.port.mk>
