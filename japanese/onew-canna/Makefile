# $OpenBSD: Makefile,v 1.4 2001/02/12 11:41:21 espie Exp $

DISTNAME=	jvim2.0r+onew2.2.10
PKGNAME?=	ja-onew-canna-2.2.10
CATEGORIES=	japanese
NEED_VERSION=	1.230
MASTER_SITES=	ftp://ftp.lab.kdd.co.jp/Japan/onew/ \
		ftp://ftp.leo.chubu.ac.jp/pub/editor/jvim/

MAINTAINER=	Marc Espie <espie@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	canna.1.::japanese/canna

WRKDIST=	${WRKDIR}/onew
ALL_TARGET=	

ONEW_CONF=	${FILESDIR}/ONEW_CONF-for-canna
LIB_NAME=	libonew-canna.a
PORT_DOCDIR=	${PREFIX}/share/doc/ja-onew-canna

post-patch:
	sed	-e 's,%PREFIX%,${PREFIX},g' \
		${ONEW_CONF} > ${WRKSRC}/ONEW_CONF

do-install:
	${INSTALL_DATA} ${WRKSRC}/libonew.a ${PREFIX}/lib/${LIB_NAME}
	${INSTALL_DATA_DIR} ${PORT_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README.ONEW ${PORT_DOCDIR}

.include <bsd.port.mk>
