# $OpenBSD: Makefile,v 1.11 2001/03/17 16:09:07 wilfried Exp $

COMMENT= 	'canna (kana-kanji converter) libraries'
COMMENT-dict=	'canna (kana-kanji converter) dictionaries'
COMMENT-server=	'canna (kana-kanji converter) server'

DISTNAME=	Canna35b2

PKGNAME=	cannalib-3.5b2p1
PKGNAME-dict=	cannadict-3.5b2
PKGNAME-server=	cannaserver-3.5b2

CATEGORIES=	japanese
NEED_VERSION=	1.361

MASTER_SITES=	ftp://ftp.nec.co.jp/pub/Canna/Canna35/

MASTER_SITES0=	http://www.jaist.ac.jp/~fujieda/canna/
PATCHFILES=	Canna35b2-unoff1.patch.gz:0 Canna35b2-unoff2.patch.gz:0 \
		Canna35b2-hack1.patch.gz:0
PATCH_DIST_STRIP=	-p1

MAINTAINER=	Marc Espie <espie@openbsd.org>

# Will turn into a RUN_DEPENDS when we install non-formatted manpages
BUILD_DEPENDS=	jgroff::japanese/groff
HOMEPAGE=	http://www.nec.co.jp/japanese/product/computer/soft/canna/
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	No Fee
PERMIT_DISTFILES_CDROM=	No Fee

MULTI_PACKAGES=-dict -server
SUBPACKAGE?=
.if ${SUBPACKAGE}=="-dict"
PKGNAME=	cannadict-3.5b2
PREFIX=		/var/dict
.endif

SUBST_VARS=	DICT_DIR
CONFIGURE_STYLE=imake
CANNAOWNER=    daemon
CANNAGROUP=    daemon
DICT_DIR=	/var/dict/canna
DIFF_ARGS=-2

MAKE_ENV+=      CANNAOWNER=${CANNAOWNER} CANNAGROUP=${CANNAGROUP} \
		DICT_DIR=${DICT_DIR} CANNA_SPOOL=/var/spool/canna

.include <bsd.port.mk>
