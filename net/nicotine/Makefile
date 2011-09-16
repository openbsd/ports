# $OpenBSD: Makefile,v 1.15 2011/09/16 11:13:39 espie Exp $

COMMENT=	gtk soulseek client written in Python

DISTNAME=	nicotine-1.0.8
REVISION=	6
CATEGORIES=	net x11

HOMEPAGE=	http://nicotine.thegraveyard.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

MODULES=	lang/python

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	x11/py-gtk2

NO_REGRESS=	Yes

do-configure:
	@perl -pi -e 's,%%MODPY_VERSION%%,${MODPY_VERSION},g' \
		${WRKSRC}/nicotine{,-import-winconfig}

.include <bsd.port.mk>
