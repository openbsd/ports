# $OpenBSD: Makefile,v 1.37 2014/07/11 16:18:51 ajacoutot Exp $

COMMENT-main= 	canna (kana-kanji converter) libraries
COMMENT-dict=	canna (kana-kanji converter) dictionaries
COMMENT-server=	canna (kana-kanji converter) server

DISTNAME=	Canna35b2

PKGNAME-main=	cannalib-3.5b2
PKGNAME-dict=	cannadict-3.5b2
PKGNAME-server=	cannaserver-3.5b2

REVISION-main =	4
REVISION-dict =	0
REVISION-server = 6

SHARED_LIBS=	RKC	1.0 \
		RKC16	1.0 \
		canna	1.0 \
		canna16	1.0

CATEGORIES=	japanese

MASTER_SITES =	ftp://ftp.sra.co.jp/pub/misc/canna/

MASTER_SITES0=	http://www.jaist.ac.jp/~fujieda/canna/
PATCHFILES=	Canna35b2-unoff1.patch.gz:0 Canna35b2-unoff2.patch.gz:0 \
		Canna35b2-hack1.patch.gz:0
PATCH_DIST_STRIP=	-p1

MAINTAINER=	Marc Espie <espie@openbsd.org>

BUILD_DEPENDS=	japanese/groff

HOMEPAGE =	http://www.nec.co.jp/canna/

PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	No Fee

MULTI_PACKAGES=-main -dict -server

PREFIX-dict=		${VARBASE}/dict
LIB_DEPENDS-server=	japanese/canna
WANTLIB-server=	c canna

SUBST_VARS=	DICT_DIR
CONFIGURE_STYLE=imake
CANNAOWNER=	daemon
CANNAGROUP=	daemon
DICT_DIR=	${VARBASE}/dict/canna
DIFF_ARGS=	-U 2

MAKE_ENV+=      CANNAOWNER=${CANNAOWNER} CANNAGROUP=${CANNAGROUP} \
		DICT_DIR=${DICT_DIR} CANNA_SPOOL=${VARBASE}/spool/canna

MAKE_FLAGS=	LIBRKC_VERSION=$(LIBRKC_VERSION) \
		LIBRKC16_VERSION=$(LIBRKC16_VERSION) \
		LIBcanna_VERSION=$(LIBcanna_VERSION) \
		LIBcanna16_VERSION=$(LIBcanna16_VERSION) \
		COPTS="${COPTS}"

USE_GROFF =	Yes
NO_TEST=	Yes

.include <bsd.port.mk>
