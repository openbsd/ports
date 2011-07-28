# $OpenBSD: Makefile,v 1.15 2011/07/28 11:25:22 sebastia Exp $

COMMENT = 	web based groupware server

VERSION =	1.3.8
DISTNAME =	SOGo-${VERSION}b
PKGNAME =	sogo-${VERSION}.1

SHLIB_VERSION =	1.1
.for _lib in GDLContentStore NGCards OGoContentStore \
		SOGo SOGoUI
SHARED_LIBS +=	${_lib} ${SHLIB_VERSION}
.endfor

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
WANTLIB +=		objc gnustep-base

LIB_DEPENDS +=		devel/libmemcached \
			www/sope
RUN_DEPENDS +=		sope-postgres-*|sope-mysql-*:www/sope,-postgres \
			archivers/zip

CONFIGURE_STYLE =	simple dest
CONFIGURE_ARGS +=	--gsmake=`gnustep-config --variable=GNUSTEP_MAKEFILES`
MAKE_FLAGS +=		libGDLContentStore_INTERFACE_VERSION=${SHLIB_VERSION} \
			libNGCards_INTERFACE_VERSION=${SHLIB_VERSION} \
			libOGoContentStore_INTERFACE_VERSION=${SHLIB_VERSION} \
			libSOGoUI_INTERFACE_VERSION=${SHLIB_VERSION} \
			SOGo_INTERFACE_VERSION=${SHLIB_VERSION}

pre-configure:
.for f in SOGo_Installation_Guide SOGo_Mobile_Devices_Configuration \
    SOGo_Mozilla_Thunderbird_Configuration
	cd ${WRKSRC}/Documentation; mv "${f:S/_/ /g}.odt" "$f.odt"
.endfor

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sogo
	${INSTALL_DATA} ${WRKSRC}/Documentation/* ${PREFIX}/share/doc/sogo
	${INSTALL_SCRIPT} -c -o ${SHAREOWN} -g ${SHAREGRP} \
		${WRKSRC}/Scripts/cas-proxy-validate.py \
		${PREFIX}/share/doc/sogo/cas-proxy-validate.py

.include <bsd.port.mk>
