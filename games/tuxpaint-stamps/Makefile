# $OpenBSD: Makefile,v 1.9 2015/05/25 07:54:27 jasper Exp $

PKG_ARCH=	*

COMMENT=	rubber stamps collection for Tux Paint

DISTNAME=	tuxpaint-stamps-2014-08-23
PKGNAME=	tuxpaint-stamps-20140823
REVISION=	0
EXTRACT_SUFX=	.zip
WRKDIST=	${WRKDIR}/TuxPaint

CATEGORIES=	games graphics

HOMEPAGE=	http://www.tuxpaint.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tuxpaint/}

NO_BUILD=	Yes
NO_TEST=	Yes

RUN_DEPENDS=	games/tuxpaint

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/tuxpaint/stamps/
	cp -R ${WRKSRC}/data/stamps/* ${PREFIX}/share/tuxpaint/stamps/
	@find ${PREFIX}/share/tuxpaint/stamps/ -type f ! -perm 644 -exec chmod 644 {} \;
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/tuxpaint/stamps/
	rm -r ${PREFIX}/share/tuxpaint/stamps/cartoon/tux

.include <bsd.port.mk>
