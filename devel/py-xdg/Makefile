# $OpenBSD: Makefile,v 1.1.1.1 2008/04/16 12:05:28 jasper Exp $

COMMENT=		python library to access freedesktop.org standards

MODPY_EGG_VERSION=	0.15
DISTNAME=		pyxdg-${MODPY_EGG_VERSION}
PKGNAME=		py-xdg-${MODPY_EGG_VERSION}

CATEGORIES=		devel

HOMEPAGE=		http://freedesktop.org/wiki/Software/pyxdg

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://people.freedesktop.org/~lanius/

MODULES=		lang/python

# regression tests are present, but don't make much sense atm
NO_REGRESS=		Yes

pre-configure:
	@perl -pi -e 's,!!LOCALBASE!!,${LOCALBASE},g;' \
		-e 's,!!SYSCONFDIR!!,${SYSCONFDIR},g' ${WRKSRC}/xdg/*.py

.include <bsd.port.mk>
