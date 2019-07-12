# $OpenBSD: Makefile,v 1.20 2019/07/12 21:25:58 sthen Exp $

COMMENT=	library for Japanese Input Method Wnn4

COMMENT-wnn4= 		library for Japanese Input Method Wnn4
COMMENT-canna=		library for Japanese Input Method canna
COMMENT-wnn4-canna=	library for Japanese Input Method canna or wnn4
FULLPKGNAME=		ja-onew${FLAVOR_EXT}-2.2.10

DISTNAME=	jvim2.0r+onew2.2.10
REVISION=	2
CATEGORIES=	japanese

MASTER_SITES=	ftp://ftp.lab.kdd.co.jp/Japan/onew/ \
		ftp://ftp.leo.chubu.ac.jp/pub/editor/jvim/

MAINTAINER=	Marc Espie <espie@openbsd.org>

PERMIT_PACKAGE=	Yes

FLAVORS=wnn4 canna
FLAVOR?=canna
.if empty(FLAVOR)
ERRORS+=	"Fatal: You must choose a converter"
.endif

.if ${FLAVOR:Mwnn4}
BUILD_DEPENDS=	japanese/Wnn
.endif

.if ${FLAVOR:Mcanna}
LIB_DEPENDS+=		japanese/canna
WANTLIB += canna
.endif

WRKDIST=	${WRKDIR}/onew
ALL_TARGET=	

ONEW_CONF=	${FILESDIR}/ONEW_CONF-for${FLAVOR_EXT}
LIB_NAME=	libonew${FLAVOR_EXT}.a
PORT_DOCDIR=	${PREFIX}/share/doc/ja-onew${FLAVOR_EXT}

post-patch:
	ln -s ${ONEW_CONF} ${WRKSRC}/ONEW_CONF

MAKE_FLAGS=LOCALBASE=${LOCALBASE} CFLAGS='${CFLAGS}'
SUBST_VARS=FLAVOR_EXT

NO_TEST=	Yes

do-install:
	${INSTALL_DATA} ${WRKSRC}/libonew.a ${PREFIX}/lib/${LIB_NAME}
	${INSTALL_DATA_DIR} ${PORT_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README.ONEW ${PORT_DOCDIR}

.include <bsd.port.mk>
