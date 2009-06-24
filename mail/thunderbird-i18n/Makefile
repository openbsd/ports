# $OpenBSD: Makefile,v 1.28 2009/06/24 09:24:44 martynas Exp $

PKG_ARCH=	*

V=		2.0.0.22
NAME=		thunderbird-i18n
PKGNAME=	${NAME}-${V}

CATEGORIES=	mail

HOMEPAGE=	http://www.mozilla.org/projects/l10n/

MAINTAINER=	Martynas Venckus <martynas@openbsd.org>

# Mozilla public license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://releases.mozilla.org/pub/mozilla.org/thunderbird/releases/${V}/linux-i686/xpi/

LANGUAGES=	be bg ca cs da de el en-GB es-AR es-ES eu fi fr \
		ga-IE hu it ja ko lt nb-NO nl nn-NO pl pt-BR pt-PT \
		ru sk sl sv-SE tr zh-CN zh-TW
#		broken: mk pa-IN

BUILD_DEPENDS=	:unzip-*:archivers/unzip
RUN_DEPENDS=	:mozilla-thunderbird-${V}:mail/mozilla-thunderbird

DIST_SUBDIR=	${NAME}-${V}
NO_BUILD=	Yes
NO_REGRESS=	Yes

# define one language for the main package
SUBPACKAGE?=	-en-GB

.for i in ${LANGUAGES}
MULTI_PACKAGES+=-$i
DISTFILES+=	$i.xpi
PKGNAME-$i=	${NAME}-$i-${V}
COMMENT-$i=	$i language pack for Thunderbird
LPACKDIR-$i=	${PREFIX}/mozilla-thunderbird/extensions/langpack-$i@thunderbird.mozilla.org
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
	${INSTALL_DATA} ${WRKSRC}/$i/chrome/chromelist.txt ${LPACKDIR-$i}/chrome
	${INSTALL_DATA} ${WRKSRC}/$i/chrome/$i.jar ${LPACKDIR-$i}/chrome
.endfor

.include <bsd.port.mk>
