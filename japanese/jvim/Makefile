# $OpenBSD: Makefile,v 1.10 2000/04/09 17:36:44 espie Exp $
# $FreeBSD: Makefile,v 1.1.1.1 1998/07/10 14:05:19 kuriyama Exp $

DISTNAME=	jvim2.0r+onew2.2.10
PKGNAME?=	ja-jvim-2.0r
CATEGORIES=	japanese editors
NEED_VERSION=	 1.230
FAKE=No
MASTER_SITES=	ftp://ftp.lab.kdd.co.jp/Japan/onew/ \
		ftp://ftp.leo.chubu.ac.jp/pub/editor/jvim/


MAINTAINER=	espie@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	${LIB_INPUT_METHOD}
BUILD_DEPENDS=	${BUILD_INPUT_METHOD}

PATCHDIR=	${.CURDIR}/../jvim/patches
FILESDIR=	${.CURDIR}/../jvim/files
PLIST=		${.CURDIR}/../jvim/pkg/PLIST
MANLANG=	ja_JP.EUC
MAN1=		jcat.1 jfold.1 jgrep.1 jvim.1
WRKDIST=	${WRKDIR}/jvim2.0r

# Specifying a velue INPUT_METHOD, and seting values BUILD_DEPENDS,
# LIB_DEPENDS, etc.
.if defined(CANNA)
INPUT_METHOD+=		canna
LIB_INPUT_METHOD+=	canna.1.::japanese/Canna
JPLIB+=			-lcanna
.endif
.if defined(WNN4)
INPUT_METHOD+=		wnn4
BUILD_INPUT_METHOD+=	${LOCALBASE}/bin/Wnn4/jserver::japanese/Wnn
JPDEF+=			-DWNN_ISDIR
JPLIB+=			-ljd 
.elif defined(WNN6)
INPUT_METHOD+=		wnn6
BUILD_INPUT_METHOD+=	${LOCALBASE}/bin/Wnn4/jserver::japanese/Wnn
JPDEF+=			-DWNN_ISDIR
JPLIB+=			-ljd -lcrypt
.endif
#
# Make a value of INPUT_METHOD
.if defined(INPUT_METHOD)
INPUT_METHOD!=	echo ${INPUT_METHOD} | sed -e 's/^/-/' -e 's/ /+/g'
.endif
#
# For ONEW library
.if defined(INPUT_METHOD)
BUILD_INPUT_METHOD+=	${LOCALBASE}/lib/libonew${INPUT_METHOD}.a::japanese/onew${INPUT_METHOD}
JPDEF+=		-DONEW
# If we use ONEW libray, then -lonew*.a should appear
# before the other libraries.
JPLIB!=		echo ${JPLIB} | sed 's%^%-lonew${INPUT_METHOD} %'
.endif

pre-build:
	cd ${WRKSRC}/src; \
	sed	-e 's,%LOCALBASE%,${LOCALBASE},g' \
		-e 's,%X11BASE%,${X11BASE},g' \
		-e 's,%MANLANG%,${MANLANG},g' \
			./makefile.junx > Makefile; \

do-build:
	cd ${WRKSRC}/src; make OpenBSD 'JPDEF=${JPDEF}' 'JPLIB=${JPLIB}'

do-install:
	cd ${WRKSRC}/src; make install

post-install:
	@for file in jcat jgrep jfold jvim; do \
		${STRIP} ${LOCALBASE}/bin/$$file; \
	done
	@echo "You may have to add man/ja_JP.EUC to _default in /etc/man.conf manually"

.include <bsd.port.mk>
