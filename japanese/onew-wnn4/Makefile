# $OpenBSD: Makefile,v 1.12 2000/04/28 23:19:54 espie Exp $

DISTNAME=	jvim2.0r+onew2.2.10
PKGNAME=	ja-onew-wnn4-2.2.10
CATEGORIES=	japanese
NEED_VERSION=	1.230
FAKE=		Yes
MASTER_SITES=	ftp://ftp.lab.kdd.co.jp/Japan/onew/ \
		ftp://ftp.leo.chubu.ac.jp/pub/editor/jvim/

MAINTAINER=	espie@cvs.openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	jserver::japanese/Wnn

WRKDIST=	${WRKDIR}/onew
ALL_TARGET=	

ONEW_CONF=	${FILESDIR}/ONEW_CONF-for-wnn4
LIB_NAME=	libonew-wnn4.a
PORT_DOCDIR=	${PREFIX}/share/doc/ja-onew-wnn4

post-patch:
	sed	-e 's,%PREFIX%,${PREFIX},g' \
		${ONEW_CONF} > ${WRKSRC}/ONEW_CONF

do-install:
	${INSTALL_DATA} ${WRKSRC}/libonew.a ${LOCALBASE}/lib/${LIB_NAME}
	${INSTALL_DATA_DIR} ${PORT_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README.ONEW ${PORT_DOCDIR}

.include <bsd.port.mk>
