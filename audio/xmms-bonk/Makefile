# $OpenBSD: Makefile,v 1.1.1.1 2002/06/03 14:51:26 naddy Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"XMMS input plugin to play bonk files"

VERSION=	0.11
DISTNAME=	bonk-xmms-${VERSION}
PKGNAME=	xmms-bonk-${VERSION}
CATEGORIES=	audio
NEED_VERSION=	1.529

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.proustmedia.de/bonk-xmms/

LIB_DEPENDS=	xmms.3::audio/xmms

ALL_TARGET=

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/xmms/Input/
	${INSTALL_DATA} ${WRKBUILD}/libbonk.so ${PREFIX}/lib/xmms/Input/

.include <bsd.port.mk>
