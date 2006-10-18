# $OpenBSD: Makefile,v 1.1.1.1 2006/10/18 16:44:19 alek Exp $

COMMENT=	"SPE -- Stani's Python Editor"

DISTNAME=	SPE-0.8.2.a-wx2.6.1.0
PKGNAME=	spe-0.8.2a
CATEGORIES=	devel

HOMEPAGE=	http://pythonide.stani.be/

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

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
