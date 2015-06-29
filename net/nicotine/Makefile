# $OpenBSD: Makefile,v 1.17 2015/06/29 15:39:44 sthen Exp $

COMMENT=	gtk soulseek client written in Python

MODPY_EGG_VERSION= 1.0.8
DISTNAME=	nicotine-${MODPY_EGG_VERSION}
REVISION=	7
CATEGORIES=	net x11

HOMEPAGE=	http://nicotine.thegraveyard.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

MODULES=	lang/python

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	x11/py-gtk2

NO_TEST=	Yes

do-configure:
	@perl -pi -e 's,%%MODPY_VERSION%%,${MODPY_VERSION},g' \
		${WRKSRC}/nicotine{,-import-winconfig}

.include <bsd.port.mk>
