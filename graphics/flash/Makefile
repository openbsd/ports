# $OpenBSD: Makefile,v 1.1.1.1 2001/01/02 12:04:18 reinhard Exp $

DISTNAME=	flash-0.4.10
CATEGORIES=	graphics	
EXTRACT_SUFX=	.tgz
NEED_VERSION=	1.348
MASTER_SITES=	http://www.swift-tools.com/Flash/ \
		http://toxiclinux.org/binary

HOMEPAGE=	http://www.swift-tools.com/Flash/

MAINTAINER=	Peter Valchev <pvalchev@toxiclinux.org>

FAKE_FLAGS=	PREFIX="${WRKINST}${PREFIX}"

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/swfplayer ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/flash
	${INSTALL_MAN} ${WRKSRC}/README ${PREFIX}/share/doc/flash

.include <bsd.port.mk>
