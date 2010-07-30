# $OpenBSD: Makefile,v 1.3 2010/07/30 06:58:58 ajacoutot Exp $

COMMENT=	gamma-adjusting utility

DISTNAME=	GAMMApage-0.5
REVISION=	0

CATEGORIES=	x11
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.pcbypaul.com/software/GAMMApage.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.pcbypaul.com/software/dl/

MODULES=	lang/python

RUN_DEPENDS=	::x11/py-gtk2

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

pre-configure:
	@find ${WRKDIST} -name \*.py | \
		xargs perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g'

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/GAMMApage.py ${PREFIX}/bin/GAMMApage

.include <bsd.port.mk>
