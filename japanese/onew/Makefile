# $OpenBSD: Makefile,v 1.1.1.1 2001/03/28 15:17:34 espie Exp $

COMMENT-wnn4= 		"library for Japanese Input Method Wnn4"
COMMENT-canna=		"library for Japanese Input Method canna"
COMMENT-wnn4-canna=	"library for Japanese Input Method canna or wnn4"
FULLPKGNAME-wnn4=	"ja-onew-wnn4-2.2.10"
FULLPKGNAME-canna=	"ja-onew-canna-2.2.10"
FULLPKGNAME-wnn4-canna=	"ja-onew-wnn4-canna-2.2.10"

DISTNAME=	jvim2.0r+onew2.2.10
CATEGORIES=	japanese
NEED_VERSION=	1.377
MASTER_SITES=	ftp://ftp.lab.kdd.co.jp/Japan/onew/ \
		ftp://ftp.leo.chubu.ac.jp/pub/editor/jvim/

MAINTAINER=	Marc Espie <espie@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=wnn4 canna
FLAVOR?=canna
.if empty(FLAVOR)
.BEGIN:
	@echo "You must choose a converter"
	@exit 1
.endif

.if ${FLAVOR:L:Mwnn4}
BUILD_DEPENDS=	jserver::japanese/Wnn
.endif

.if ${FLAVOR:L:Mcanna}
LIB_DEPENDS+=	canna.1.::japanese/canna
.endif

WRKDIST=	${WRKDIR}/onew
ALL_TARGET=	

ONEW_CONF=	${FILESDIR}/ONEW_CONF-for${FLAVOR_EXT}
LIB_NAME=	libonew${FLAVOR_EXT}.a
PORT_DOCDIR=	${PREFIX}/share/doc/ja-onew${FLAVOR_EXT}

post-patch:
	ln -s ${ONEW_CONF} ${WRKSRC}/ONEW_CONF

MAKE_FLAGS=LOCALBASE=${LOCALBASE} CFLAGS='${CFLAGS}'

do-install:
	${INSTALL_DATA} ${WRKSRC}/libonew.a ${PREFIX}/lib/${LIB_NAME}
	${INSTALL_DATA_DIR} ${PORT_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README.ONEW ${PORT_DOCDIR}

.include <bsd.port.mk>
