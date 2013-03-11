# $OpenBSD: Makefile,v 1.16 2013/03/11 11:35:50 espie Exp $

COMMENT=	gtk soulseek client written in Python

DISTNAME=	nicotine-1.0.8
REVISION=	6
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
