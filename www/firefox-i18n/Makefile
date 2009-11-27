# $OpenBSD: Makefile,v 1.44 2009/11/27 22:09:03 naddy Exp $

PKG_ARCH=	*

V=		3.0.15
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

LANGUAGES=	af ar be bg bn-IN ca cs cy da de el en-GB eo es-AR \
		es-ES et eu fi fr fy-NL ga-IE gl gu-IN he hi-IN hu id \
		is it ja ka kn ko ku lt lv mk mn mr nb-NO nl nn-NO \
		oc pa-IN pl pt-PT pt-BR ro ru si sk sl sq sr sv-SE \
		te th tr uk zh-CN zh-TW

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
