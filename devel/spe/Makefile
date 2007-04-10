# $OpenBSD: Makefile,v 1.2 2007/04/10 21:30:39 alek Exp $

COMMENT=	"SPE -- Stani's Python Editor"

DISTNAME=	SPE-0.8.3.c-wx2.6.1.0
PKGNAME=	spe-0.8.3c
CATEGORIES=	devel

HOMEPAGE=	http://pythonide.stani.be/

MAINTAINER=	Joerg Zinke <umaxx@oleco.net>

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_BERLIOS:=python/}

MODULES=	lang/python
RUN_DEPENDS=	:py-wxPython-*:x11/py-wxPython \
		:py-crypto-*:security/py-crypto

NO_REGRESS=	Yes

post-install:
	cd ${WRKSRC}/build/lib/_spe && tar -cf - * | \
		(cd ${WRKINST}${MODPY_SITEPKG}/_spe && tar -xf -)

.include <bsd.port.mk>
