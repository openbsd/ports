# $OpenBSD: Makefile,v 1.2 2000/04/22 13:01:11 espie Exp $

DISTNAME=	Canna35b2
PKGNAME=	cannalib-3.5b2

CATEGORIES=	japanese
MASTER_SITES=	ftp://ftp.nec.co.jp/pub/Canna/Canna35/

MASTER_SITES0=	http://www.jaist.ac.jp/~fujieda/canna/
PATCHFILES=	Canna35b2-unoff1.patch.gz:0 Canna35b2-unoff2.patch.gz:0 \
		Canna35b2-hack1.patch.gz:0
PATCH_DIST_STRIP=	-p1
FAKE=		Yes

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
.elif ${SUBPACKAGE}=="-server"
PKGNAME=	cannaserver-3.5b2
.endif

USE_IMAKE=	Yes
CANNAOWNER=    daemon
CANNAGROUP=    daemon
DICT_DIR=	/var/dict/canna
DIFF_ARGS=-2

MAKE_ENV+=      CANNAOWNER=${CANNAOWNER} CANNAGROUP=${CANNAGROUP} \
		DICT_DIR=${DICT_DIR} CANNA_SPOOL=/var/spool/canna

.include <bsd.port.mk>
