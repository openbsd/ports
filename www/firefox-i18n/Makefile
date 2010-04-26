# $OpenBSD: Makefile,v 1.50 2010/04/26 19:57:04 landry Exp $

PKG_ARCH=	*

V=		3.6.3
NAME=		firefox-i18n
PKGNAME=	${NAME}-${V}

CATEGORIES=	www

HOMEPAGE=	http://www.mozilla.org/projects/l10n/

MAINTAINER=	Martynas Venckus <martynas@openbsd.org>

# Mozilla public license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://releases.mozilla.org/pub/mozilla.org/firefox/releases/${V}/linux-i686/xpi/

LANGUAGES=	af ar as be bg bn-BD bn-IN ca cs cy da de el en-GB eo es-AR \
		es-CL es-ES es-MX et eu fi fr fy-NL ga-IE gl gu-IN he hr hi-IN hu id \
		is it ja ka kk kn ko ku lt lv mk ml mr nb-NO nl nn-NO \
		oc or pa-IN pl pt-BR pt-PT rm ro ru si sk sl sq sr sv-SE \
		ta te th tr uk vi zh-CN zh-TW
#broken install.rdf: ta-LK

BUILD_DEPENDS=	:unzip-*:archivers/unzip
RUN_DEPENDS=	:mozilla-firefox-${V}:www/mozilla-firefox

DIST_SUBDIR=	${NAME}-${V}
NO_BUILD=	Yes
NO_REGRESS=	Yes

# define one language for the main package
SUBPACKAGE?=	-en-GB

.for i in ${LANGUAGES}
MULTI_PACKAGES+=-$i
DISTFILES+=	$i.xpi
PKGNAME-$i=	${NAME}-$i-${V}
COMMENT-$i=	$i language pack for Firefox
LPACKDIR-$i=	${PREFIX}/mozilla-firefox/extensions/langpack-$i@firefox.mozilla.org
.endfor
PKGNAME-en-GB=	${NAME}-en-GB-${V}

# use the same for all subpackages
MESSAGE=	${PKGDIR}/MESSAGE

do-extract:
.for i in ${LANGUAGES}
	@mkdir -p ${WRKDIR}/$i
	@${UNZIP} -oq ${FULLDISTDIR}/$i.xpi -d ${WRKDIR}/$i
.endfor

do-install:
.for i in ${LANGUAGES}
	${INSTALL_DATA_DIR} ${LPACKDIR-$i}/chrome
	${INSTALL_DATA} ${WRKSRC}/$i/chrome.manifest ${LPACKDIR-$i}
	${INSTALL_DATA} ${WRKSRC}/$i/install.rdf ${LPACKDIR-$i}
	${INSTALL_DATA} ${WRKSRC}/$i/chrome/$i.jar ${LPACKDIR-$i}/chrome
.endfor

.include <bsd.port.mk>
