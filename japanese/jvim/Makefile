# $OpenBSD: Makefile,v 1.13 2000/06/11 01:53:47 espie Exp $
# $FreeBSD: Makefile,v 1.1.1.1 1998/07/10 14:05:19 kuriyama Exp $

DISTNAME=	jvim2.0r+onew2.2.10
PKGNAME=	ja-jvim-2.0r
CATEGORIES=	japanese editors
NEED_VERSION=	1.230
MASTER_SITES=	ftp://ftp.lab.kdd.co.jp/Japan/onew/ \
		ftp://ftp.leo.chubu.ac.jp/pub/editor/jvim/

MAINTAINER=	espie@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	wnn canna
FLAVOR?=


.if ${FLAVOR:L:Mwnn}
INPUT_METHOD=wnn4
BUILD_DEPENDS+=	jserver::japanese/Wnn
JPDEF+=		-DWNN_ISDIR
JPLIB+=		-ljd 
.endif

.if ${FLAVOR:L:Mcanna}
.  if ${FLAVOR:L:Mwnn}
INPUT_METHOD=	wnn4-canna
.  else
INPUT_METHOD=	canna
.endif
LIB_DEPENDS+= canna.1.::japanese/canna
JPLIB+=			-lcanna
.endif


.if defined(INPUT_METHOD) && !empty(INPUT_METHOD)
BUILD_DEPENDS+= ${PREFIX}/lib/libonew-${INPUT_METHOD}.a::japanese/onew-${INPUT_METHOD}
JPDEF+=		-DONEW
JPLIB:=-lonew-${INPUT_METHOD} ${JPLIB}
.endif


MANLANG=	ja_JP.EUC
MAN1=		jcat.1 jfold.1 jgrep.1 jvim.1
WRKDIST=	${WRKDIR}/jvim2.0r
WRKSRC=		${WRKDIST}/src

BFLAGS= JPDEF='${JPDEF}' \
	JPLIB='${JPLIB}' \
	JPCODE='-DJP=\".EE\"' \
	PREFIX='${PREFIX}' \
	MANDIR='$${PREFIX}/man/ja_JP.EUC' \
	MACHINE=-DBSD_UNIX \
	CC='cc ${CFLAGS} -Wall'

MAKE_FILE=	makefile.junx
ALL_TARGET=jvim jcat jfold jgrep

MAKE_FLAGS=${BFLAGS} PREFIX='${PREFIX}'
FAKE_FLAGS=${BFLAGS} PREFIX='${WRKINST}${PREFIX}'


post-install:
	@for file in jcat jgrep jfold jvim; do \
		${STRIP} ${PREFIX}/bin/$$file; \
	done
	@echo "You may have to add man/ja_JP.EUC to _default in /etc/man.conf manually"

.include <bsd.port.mk>
