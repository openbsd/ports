# $OpenBSD: Makefile,v 1.23 2005/11/05 12:46:52 espie Exp $

COMMENT= 	'canna (kana-kanji converter) libraries'
COMMENT-dict=	'canna (kana-kanji converter) dictionaries'
COMMENT-server=	'canna (kana-kanji converter) server'

DISTNAME=	Canna35b2

PKGNAME=	cannalib-3.5b2p2
PKGNAME-dict=	cannadict-3.5b2
PKGNAME-server=	cannaserver-3.5b2p2

CATEGORIES=	japanese

MASTER_SITES=	ftp://ftp.nec.co.jp/pub/Canna/Canna35/

MASTER_SITES0=	http://www.jaist.ac.jp/~fujieda/canna/
PATCHFILES=	Canna35b2-unoff1.patch.gz:0 Canna35b2-unoff2.patch.gz:0 \
		Canna35b2-hack1.patch.gz:0
PATCH_DIST_STRIP=	-p1

MAINTAINER=	Marc Espie <espie@openbsd.org>

# Will turn into a RUN_DEPENDS when we install non-formatted manpages
BUILD_DEPENDS=	:ja-groff-*:japanese/groff
HOMEPAGE=	http://www.nec.co.jp/japanese/product/computer/soft/canna/
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	No Fee
PERMIT_DISTFILES_CDROM=	No Fee

MULTI_PACKAGES=-dict -server

.if defined(PACKAGING) 
SUBPACKAGE?=
.  if ${SUBPACKAGE:L}=="-dict"
PREFIX=		/var/dict
.  elif ${SUBPACKAGE:L} == "-server"
LIB_DEPENDS=canna::japanese/canna
WANTLIB=	c
.  endif
.endif

SUBST_VARS=	DICT_DIR
CONFIGURE_STYLE=imake
CANNAOWNER=    daemon
CANNAGROUP=    daemon
DICT_DIR=	/var/dict/canna
DIFF_ARGS=-U 2

MAKE_ENV+=      CANNAOWNER=${CANNAOWNER} CANNAGROUP=${CANNAGROUP} \
		DICT_DIR=${DICT_DIR} CANNA_SPOOL=/var/spool/canna

NO_REGRESS=	Yes

.include <bsd.port.mk>
