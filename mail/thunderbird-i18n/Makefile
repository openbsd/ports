# $OpenBSD: Makefile,v 1.46 2011/07/24 07:13:01 landry Exp $

# keep in sync with www/mozilla/mozilla.port.mk
ONLY_FOR_ARCHS=	amd64 i386 powerpc

PKG_ARCH=	*

V=		5.0
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

LANGUAGES=	ar bg br ca cs da de en-GB en-US es-AR es-ES et eu fi fr \
		fy-NL ga-IE gd gl he hu is it ja ko lt nb-NO nl nn-NO pa-IN pl \
		pt-BR pt-PT rm ru si sk sl sq sv-SE ta-LK tr uk zh-TW

BUILD_DEPENDS=	archivers/unzip
RUN_DEPENDS=	thunderbird-${V}:mail/mozilla-thunderbird

DIST_SUBDIR=	mozilla/${NAME}-${V}
NO_BUILD=	Yes
NO_REGRESS=	Yes
EXTRACT_ONLY=

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
SUBST_VARS=	V

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/thunderbird-$V/extensions
.for i in ${LANGUAGES}
	${INSTALL_DATA} ${FULLDISTDIR}/$i.xpi ${PREFIX}/lib/thunderbird-$V/extensions/langpack-$i@thunderbird.mozilla.org.xpi
.endfor

.include <bsd.port.mk>
