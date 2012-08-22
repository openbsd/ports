# $OpenBSD: Makefile,v 1.21 2012/08/22 07:16:37 sebastia Exp $

COMMENT = 	web based groupware server

VERSION =	1.3.17
REVISION =	0
DISTNAME =	SOGo-${VERSION}
PKGNAME =	sogo-${VERSION}

SHARED_LIBS +=	GDLContentStore 1.1
SHARED_LIBS +=	NGCards		1.1
SHARED_LIBS +=	OGoContentStore	1.1
SHARED_LIBS +=	SOGo		1.3
SHARED_LIBS +=	SOGoUI		1.1

CATEGORIES =	www
HOMEPAGE =	http://www.sogo.nu/
MASTER_SITES =	${HOMEPAGE}/files/downloads/SOGo/Sources/
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# LGPLv2/GPLv2
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =		x11/gnustep
MODGNUSTEP_NEEDS_GUI =	No

WANTLIB +=		c m pthread crypto memcached WOExtensions SBJson
WANTLIB +=		DOM EOControl GDLAccess NGExtensions NGLdap XmlRpc
WANTLIB +=		NGMime NGObjWeb NGStreams SaxObjC WEExtensions
WANTLIB +=		objc gnustep-base curl

LIB_DEPENDS +=		devel/libmemcached \
			net/curl \
			www/sope
RUN_DEPENDS +=		sope-postgres-*|sope-mysql-*:www/sope,-postgres \
			archivers/zip

CONFIGURE_STYLE =	simple dest
CONFIGURE_ARGS +=	--gsmake=`gnustep-config --variable=GNUSTEP_MAKEFILES`
MAKE_FLAGS +=		libGDLContentStore_INTERFACE_VERSION=${LIBGDLContentStore_VERSION} \
			libNGCards_INTERFACE_VERSION=${LIBNGCards_VERSION} \
			libOGoContentStore_INTERFACE_VERSION=${LIBOGoContentStore_VERSION} \
			libSOGoUI_INTERFACE_VERSION=${LIBSOGoUI_VERSION} \
			SOGo_INTERFACE_VERSION=${LIBSOGo_VERSION}

SOGOLIBDIR =	lib/GNUstep/Frameworks/SOGo.framework/Versions/${LIBSOGo_VERSION}
SUBST_VARS +=	SOGOLIBDIR

pre-configure:
.for f in SOGo_Installation_Guide SOGo_Mobile_Devices_Configuration \
    SOGo_Mozilla_Thunderbird_Configuration SOGo_Native_Microsoft_Outlook_Configuration
	cd ${WRKSRC}/Documentation; mv "${f:S/_/ /g}.odt" "$f.odt"
.endfor

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sogo
	${INSTALL_DATA} ${WRKSRC}/Documentation/* ${PREFIX}/share/doc/sogo
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

.include <bsd.port.mk>
