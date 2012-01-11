# $OpenBSD: Makefile,v 1.53 2012/01/11 01:10:24 nigel Exp $

# keep in sync with www/mozilla/mozilla.port.mk
ONLY_FOR_ARCHS=	amd64 i386 powerpc

PKG_ARCH=	*

FV=		9.0.1
V=		${FV:C/b.$//}
NAME=		thunderbird-i18n
PKGNAME=	${NAME}-${FV}

CATEGORIES=	mail

HOMEPAGE=	http://www.mozilla.org/projects/l10n/

MAINTAINER=	Martynas Venckus <martynas@openbsd.org>

# Mozilla public license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	https://ftp.mozilla.org/pub/mozilla.org/thunderbird/releases/${FV}/linux-i686/xpi/ \
		http://releases.mozilla.org/pub/mozilla.org/thunderbird/releases/${FV}/linux-i686/xpi/ \
		ftp://ftp.mozilla.org/pub/mozilla.org/thunderbird/releases/${FV}/linux-i686/xpi/

LANGUAGES=	ar be bg bn-BD br ca cs da de el en-GB en-US es-AR es-ES et eu \
		fi fr fy-NL ga-IE gd gl he hu id is it ja ko lt nb-NO nl nn-NO \
		pa-IN pl pt-BR pt-PT rm ro ru si sk sl sq sv-SE ta-LK tr uk vi \
		zh-CN zh-TW

BUILD_DEPENDS=	archivers/unzip
RUN_DEPENDS=	thunderbird-${FV}:mail/mozilla-thunderbird

DIST_SUBDIR=	mozilla/${NAME}-${FV}
NO_BUILD=	Yes
NO_REGRESS=	Yes
EXTRACT_ONLY=

# define one language for the main package
SUBPACKAGE?=	-en-GB

.for i in ${LANGUAGES}
MULTI_PACKAGES+=-$i
DISTFILES+=	$i.xpi
PKGNAME-$i=	${NAME}-$i-${FV}
COMMENT-$i=	$i language pack for Thunderbird
LPACKDIR-$i=	${PREFIX}/mozilla-thunderbird/extensions/langpack-$i@thunderbird.mozilla.org
.endfor
PKGNAME-en-GB=	${NAME}-en-GB-${FV}

# use the same for all subpackages
MESSAGE=	${PKGDIR}/MESSAGE
SUBST_VARS=	V

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/thunderbird-$V/extensions
.for i in ${LANGUAGES}
	${INSTALL_DATA} ${FULLDISTDIR}/$i.xpi ${PREFIX}/lib/thunderbird-$V/extensions/langpack-$i@thunderbird.mozilla.org.xpi
.endfor

.include <bsd.port.mk>
