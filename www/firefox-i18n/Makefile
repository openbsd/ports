# $OpenBSD: Makefile,v 1.9 2006/12/30 22:53:03 bernd Exp $

PKG_ARCH=	*

COMMENT-main=	"${MAINLANG} language pack for Firefox"
V=		1.5.0.9
NAME=		firefox-i18n
PKGNAME=	${NAME}-${MAINLANG}-${V}
PKGNAME-main=	${NAME}-${MAINLANG}-${V}p0

CATEGORIES=	www

HOMEPAGE=	http://www.mozilla.org/projects/l10n/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# Mozilla public license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://ftp.eu.mozilla.org/pub/mozilla.org/firefox/releases/${V}/linux-i686/xpi/ \
		http://ftp.mozilla.org/pub/mozilla.org/firefox/releases/${V}/linux-i686/xpi/

# define one language for the main package
MAINLANG=	en-GB
OTHERLANGS=	ar bg ca cs da de el es-AR es-ES eu fi fr ga-IE gu-IN \
		he hu it ja nb-NO nl pl pt-BR ro ru sk sl sv-SE tr zh-CN zh-TW
#		broken: ko mk pa-IN

BUILD_DEPENDS=	:unzip-*:archivers/unzip
RUN_DEPENDS=	:mozilla-firefox-${V}:www/mozilla-firefox

DIST_SUBDIR=	${NAME}-${V}
NO_BUILD=	Yes
NO_REGRESS=	Yes

DISTFILES=	${MAINLANG}.xpi
LPACKDIR-${MAINLANG}=${PREFIX}/mozilla-firefox/extensions/langpack-${MAINLANG}@firefox.mozilla.org

MULTI_PACKAGES=	-main

.for i in ${OTHERLANGS}
MULTI_PACKAGES+=-$i
DISTFILES+=	$i.xpi
PKGNAME-$i=	${NAME}-$i-${V}p0
COMMENT-$i=	$i language pack for Firefox
LPACKDIR-$i=	${PREFIX}/mozilla-firefox/extensions/langpack-$i@firefox.mozilla.org
.endfor

SUBST_VARS=	MAINLANG

# use the same for all subpackages
MESSAGE=	${PKGDIR}/MESSAGE

do-extract:
.for i in ${MAINLANG} ${OTHERLANGS}
	@mkdir -p ${WRKDIR}/$i
	@${UNZIP} -oq ${FULLDISTDIR}/$i.xpi -d ${WRKDIR}/$i
.endfor

do-install:
.for i in ${MAINLANG} ${OTHERLANGS}
	${INSTALL_DATA_DIR} ${LPACKDIR-$i}/chrome
	${INSTALL_DATA} ${WRKSRC}/$i/chrome.manifest ${LPACKDIR-$i}
	${INSTALL_DATA} ${WRKSRC}/$i/install.rdf ${LPACKDIR-$i}
	${INSTALL_DATA} ${WRKSRC}/$i/chrome/chromelist.txt ${LPACKDIR-$i}/chrome
	${INSTALL_DATA} ${WRKSRC}/$i/chrome/$i.jar ${LPACKDIR-$i}/chrome
.endfor

.include <bsd.port.mk>
