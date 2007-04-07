# $OpenBSD: Makefile,v 1.1.1.1 2007/04/07 11:52:20 martynas Exp $

PKG_ARCH=	*

COMMENT-main=	"${MAINLANG} dictionary for Mozilla"
V=		1.0
NAME=		mozilla-dicts
PKGNAME=	${NAME}-${MAINLANG}-${V}
PKGNAME-main=	${NAME}-${MAINLANG}-${V}

CATEGORIES=	textproc

HOMEPAGE=	https://addons.mozilla.org/firefox/browse/type:3

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# Mozilla public license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://mirrors.protection.cx/~jolan/mozilla-dicts/${V}/ \
		http://www.obsd.fr/OpenBSD/distfiles/mozilla-dicts/${V}/

# define one language for the main package
MAINLANG=	en-GB
OTHERLANGS=	bg-BG ca cs cy-GB danish de-AT de-CH de-DE el-GR en-AU \
		en-CA eo-EO es-AR es-es fr-FR fr ga-IE he hr hu is-IS is \
		it-IT lt lv-LV nb-NO_nn-NO nl-NL pl pt-BR pt-PT ro ru sl sv

BUILD_DEPENDS=	:unzip-*:archivers/unzip

DIST_SUBDIR=	${NAME}-${V}
NO_BUILD=	Yes
NO_REGRESS=	Yes

DISTFILES=	${MAINLANG}.xpi

MULTI_PACKAGES=	-main

.for i in ${OTHERLANGS}
MULTI_PACKAGES+=-$i
DISTFILES+=	$i.xpi
PKGNAME-$i=	${NAME}-$i-${V}
COMMENT-$i=	$i dictionary for Mozilla
.endfor

SUBST_VARS=	MAINLANG

# use the same for all subpackages
MESSAGE=	${PKGDIR}/MESSAGE

do-extract:
.for i in ${MAINLANG} ${OTHERLANGS}
	@${UNZIP} -oq ${FULLDISTDIR}/$i.xpi -d ${WRKDIR} *.aff
	@${UNZIP} -oq ${FULLDISTDIR}/$i.xpi -d ${WRKDIR} *.dic
.endfor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/mozilla-dicts
	${INSTALL_DATA} ${WRKDIR}/dictionaries/*.aff ${PREFIX}/share/mozilla-dicts/
	${INSTALL_DATA} ${WRKDIR}/dictionaries/*.dic ${PREFIX}/share/mozilla-dicts/

.include <bsd.port.mk>
