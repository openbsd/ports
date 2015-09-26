# $OpenBSD: Makefile,v 1.48 2015/09/26 14:29:22 sebastia Exp $

COMMENT = 	web based groupware server

VERSION =	2.3.2
DISTNAME =	SOGo-${VERSION}
PKGNAME =	sogo-${VERSION}

SHARED_LIBS +=	GDLContentStore 2.0
SHARED_LIBS +=	NGCards		2.0
SHARED_LIBS +=	SOGo		3.0
SHARED_LIBS +=	SOGoUI		2.0

CATEGORIES =	www
HOMEPAGE =	http://www.sogo.nu/
MASTER_SITES =	${HOMEPAGE}/files/downloads/SOGo/Sources/
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# LGPLv2/GPLv2
PERMIT_PACKAGE_CDROM =		Yes

MODULES =		x11/gnustep
MODGNUSTEP_NEEDS_GUI =	No

WANTLIB +=		c m pthread crypto memcached SBJson
WANTLIB +=		DOM EOControl GDLAccess NGExtensions NGLdap
WANTLIB +=		NGMime NGObjWeb NGStreams SaxObjC WEExtensions
WANTLIB +=		objc2 gnustep-base curl

LIB_DEPENDS +=		devel/libmemcached \
			net/curl \
			www/sope
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
			SOGo_INTERFACE_VERSION=${LIBSOGo_VERSION}

SOGOLIBDIR =	lib/GNUstep/Frameworks/SOGo.framework/Versions/${LIBSOGo_VERSION}
SUBST_VARS +=	SOGOLIBDIR VARBASE

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sogo
	${INSTALL_SCRIPT} -c -o ${SHAREOWN} -g ${SHAREGRP} \
		${WRKSRC}/Scripts/cas-proxy-validate.py \
		${PREFIX}/share/doc/sogo/cas-proxy-validate.py
	${INSTALL_SCRIPT} -c -o ${SHAREOWN} -g ${SHAREGRP} \
		${WRKSRC}/Scripts/sql-update-1.3.11_to_1.3.12.sh \
		${PREFIX}/share/doc/sogo/sql-update-1.3.11_to_1.3.12-postgres.sh
	${INSTALL_SCRIPT} -c -o ${SHAREOWN} -g ${SHAREGRP} \
		${WRKSRC}/Scripts/sql-update-1.3.11_to_1.3.12-mysql.sh \
		${PREFIX}/share/doc/sogo/sql-update-1.3.11_to_1.3.12-mysql.sh
	${INSTALL_SCRIPT} -c -o ${SHAREOWN} -g ${SHAREGRP} \
		${WRKSRC}/Scripts/sql-update-1.3.16_to_1.3.17.sh \
		${PREFIX}/share/doc/sogo/sql-update-1.3.16_to_1.3.17-postgres.sh
	${INSTALL_SCRIPT} -c -o ${SHAREOWN} -g ${SHAREGRP} \
		${WRKSRC}/Scripts/sql-update-1.3.16_to_1.3.17-mysql.sh \
		${PREFIX}/share/doc/sogo/sql-update-1.3.16_to_1.3.17-mysql.sh
	${INSTALL_SCRIPT} -c -o ${SHAREOWN} -g ${SHAREGRP} \
		${WRKSRC}/Scripts/sql-update-2.2.17_to_2.3.0.sh \
		${PREFIX}/share/doc/sogo/sql-update-2.2.17_to_2.3.0-postgres.sh
	${INSTALL_SCRIPT} -c -o ${SHAREOWN} -g ${SHAREGRP} \
		${WRKSRC}/Scripts/sql-update-2.2.17_to_2.3.0-mysql.sh \
		${PREFIX}/share/doc/sogo/sql-update-2.2.17_to_2.3.0-mysql.sh
	${INSTALL_SCRIPT} -c -o ${SHAREOWN} -g ${SHAREGRP} \
		${WRKSRC}/Scripts/updates.php \
		${PREFIX}/share/doc/sogo/updates.php

do-test:
	cd ${WRKSRC}/Tests/Integration && ${MAKE_PROGRAM} && ./teststrings.sh
	cd ${WRKSRC}/Tests/Unit && ${MAKE_PROGRAM} && obj/sogo-tests

.include <bsd.port.mk>
