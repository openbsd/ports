# $OpenBSD: Makefile,v 1.12 2014/09/18 07:26:38 sthen Exp $

COMMENT=		module and program for processing ID3 tags

MODPY_EGG_VERSION=	0.6.18
DISTNAME=		eyeD3-${MODPY_EGG_VERSION}
CATEGORIES=		audio

HOMEPAGE=		http://eyed3.nicfit.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}releases/

MODULES=		lang/python
MODPY_ADJ_FILES=	bin/eyeD3

USE_GMAKE=		Yes
FAKE_FLAGS=		docdir=${WRKINST}${PREFIX}/share/doc/py-eyed3

CONFIGURE_STYLE=	gnu

NO_TEST=		Yes

.include <bsd.port.mk>
