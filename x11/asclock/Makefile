# OpenBSD makefile for:   asclock
# Version required:    1.0
# Date created:        May 19 1998
# Whom:                Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.4 2000/03/31 17:22:05 espie Exp $
#

DISTNAME=	asclock
PKGNAME=	asclock-1.0
CATEGORIES=	x11
NEED_VERSION=	1.240
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=		applications
EXTRACT_SUFX=	.tgz

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_IMAKE=	Yes
FAKE=		Yes

FLAVORS=english german portuguese dutch norwegian italian swedish spanish \
hungarian breton french czech

FLAVOR?=english


# Note we test whether FLAVOR contains english or german or...
# there are some other options to asclock building, maybe we should extend
# the flavor ?

.if ${FLAVOR:L:Menglish}
ASCLOCK_LANG=1
.elif ${FLAVOR:L:Mgerman}
ASCLOCK_LANG=2
.elif ${FLAVOR:L:Mportuguese}
ASCLOCK_LANG=3
.elif ${FLAVOR:L:Mdutch}
ASCLOCK_LANG=4
.elif ${FLAVOR:L:Mnorwegian}
ASCLOCK_LANG=5
.elif ${FLAVOR:L:Mitalian}
ASCLOCK_LANG=6
.elif ${FLAVOR:L:Mswedish}
ASCLOCK_LANG=7
.elif ${FLAVOR:L:Mspanish}
ASCLOCK_LANG=8
.elif ${FLAVOR:L:Mhungarian}
ASCLOCK_LANG=9
.elif ${FLAVOR:L:Mbreton}
ASCLOCK_LANG=0
.elif ${FLAVOR:L:Mfrench}
ASCLOCK_LANG=a
.elif ${FLAVOR:L:Mczech}
ASCLOCK_LANG=b
.endif

pre-configure:
	@cd ${WRKSRC} && echo ${ASCLOCK_LANG} | ./configure >/dev/null

.include <bsd.port.mk>
