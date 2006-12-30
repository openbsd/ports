# $OpenBSD: Makefile,v 1.8 2006/12/30 22:53:03 bernd Exp $

COMMENT-main=	"${MAINLANG} language pack for Thunderbird"
V=		1.5.0.9
NAME=		thunderbird-i18n
PKGNAME=	${NAME}-${MAINLANG}-${V}
PKGNAME-main=	${NAME}-${MAINLANG}-${V}p0

CATEGORIES=	mail

HOMEPAGE=	http://www.mozilla.org/projects/l10n/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# Mozilla public license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://ftp.eu.mozilla.org/pub/mozilla.org/thunderbird/releases/${V}/linux-i686/xpi/ \
		http://ftp.mozilla.org/pub/mozilla.org/thunderbird/releases/${V}/linux-i686/xpi/

# define one language for the main package
MAINLANG=	en-GB
OTHERLANGS=	bg ca cs da de el es-AR es-ES eu fi fr gu-IN \
		he hu it ja nb-NO nl pl pt-BR ru sk sl sv-SE tr zh-CN
#		broken: ko mk pa-IN ro

BUILD_DEPENDS=	:unzip-*:archivers/unzip
RUN_DEPENDS=	:mozilla-thunderbird-${V}:mail/mozilla-thunderbird

DIST_SUBDIR=	${NAME}-${V}
NO_BUILD=	Yes
NO_REGRESS=	Yes

DISTFILES=	${MAINLANG}.xpi
LPACKDIR-${MAINLANG}=${PREFIX}/mozilla-thunderbird/extensions/langpack-${MAINLANG}@thunderbird.mozilla.org

MULTI_PACKAGES=	-main

.for i in ${OTHERLANGS}
MULTI_PACKAGES+=-$i
DISTFILES+=	$i.xpi
PKGNAME-$i=	${NAME}-$i-${V}p0
COMMENT-$i=	$i language pack for Thunderbird
LPACKDIR-$i=	${PREFIX}/mozilla-thunderbird/extensions/langpack-$i@thunderbird.mozilla.org
.endfor

# use the same for all subpackages
MESSAGE=	${PKGDIR}/MESSAGE

SUBST_VARS=	MAINLANG

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
