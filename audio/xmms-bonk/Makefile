# $OpenBSD: Makefile,v 1.5 2003/01/05 03:13:06 lebel Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"XMMS input plugin to play bonk files"

VERSION=	0.12
DISTNAME=	bonk-xmms-${VERSION}
PKGNAME=	xmms-bonk-${VERSION}
CATEGORIES=	audio

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.proustmedia.de/bonk-xmms/

LIB_DEPENDS=	xmms.3::audio/xmms

# gcc3
MODULES=		gcc3
MODGCC3_ARCHES=         sparc64
MODGCC3_LANGS+=         c++

MAKE_ENV=	CXX="${CXX}"
ALL_TARGET=

NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/xmms/Input/
	${INSTALL_DATA} ${WRKBUILD}/libbonk.so ${PREFIX}/lib/xmms/Input/

.include <bsd.port.mk>
