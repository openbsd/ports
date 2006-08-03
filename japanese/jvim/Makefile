# $OpenBSD: Makefile,v 1.23 2006/08/03 13:09:09 espie Exp $
# $FreeBSD: Makefile,v 1.1.1.1 1998/07/10 14:05:19 kuriyama Exp $

COMMENT=	"Japanized Vim"
COMMENT-canna=	"Japanized Vim, canna input method"
COMMENT-wnn=	"Japanized Vim, wnn input method"
COMMENT-wnn-canna="Japanized Vim, canna or wnn input method"
DISTNAME=	jvim2.0r+onew2.2.10
PKGNAME=	ja-jvim-2.0rp0
CATEGORIES=	japanese editors

MASTER_SITES=	ftp://ftp.lab.kdd.co.jp/Japan/onew/ \
		ftp://ftp.leo.chubu.ac.jp/pub/editor/jvim/

MAINTAINER=	Marc Espie <espie@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c termcap

FLAVORS=	wnn canna
FLAVOR?=


.if ${FLAVOR:L:Mwnn}
CHOICE=wnn4
INPUT_METHOD=wnn4
BUILD_DEPENDS+=	::japanese/Wnn
JPDEF+=		-DWNN_ISDIR
JPLIB+=		-ljd 
.endif

.if ${FLAVOR:L:Mcanna}
.  if ${FLAVOR:L:Mwnn}
INPUT_METHOD=	wnn4-canna
CHOICE=wnn4,canna
.  else
INPUT_METHOD=	canna
CHOICE=canna
.endif
PERMIT_PACKAGE_CDROM=	"Canna prevents it"
LIB_DEPENDS+= canna.>=1::japanese/canna
JPLIB+=			-lcanna
.endif


.if defined(INPUT_METHOD) && !empty(INPUT_METHOD)
BUILD_DEPENDS+= ::japanese/onew,${CHOICE}
JPDEF+=		-DONEW
JPLIB:=-lonew-${INPUT_METHOD} ${JPLIB}
.endif


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

NO_REGRESS=	Yes

post-install:
	@for file in jcat jgrep jfold jvim; do \
		${STRIP} ${PREFIX}/bin/$$file; \
	done
	@echo "You may have to add man/ja_JP.EUC to _default in /etc/man.conf manually"

.include <bsd.port.mk>
