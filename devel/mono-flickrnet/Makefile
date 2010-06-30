# $OpenBSD: Makefile,v 1.2 2010/06/30 19:18:07 robert Exp $

COMMENT=	Flickr .Net API Library

V=		2.2.0
DISTNAME=	FlickrNet${V:C/^([0-9]+\.[0-9]+).*/\1/}-Src-48055
PKGNAME=	mono-flickrnet-${V}p0
CATEGORIES=	devel graphics

HOMEPAGE=	http://www.codeplex.com/FlickrNet
MASTER_SITES=	http://blade2k.humppa.hu/

# Common Public License 1.0
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MODULES=	lang/mono

USE_GMAKE=	Yes

WRKSRC=		${WRKDIST}/FlickrNet

do-configure:
	cd ${WRKSRC} && prj2make FlickrNet.csproj

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/mono/flickrnet
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	cd ${WRKSRC}/bin/Debug && ${INSTALL_DATA} FlickrNet.dll ${PREFIX}/lib/mono/flickrnet
	cd ${WRKSRC} && sed -e 's|@prefix@|${TRUEPREFIX}|g;s|@version@|${V}|g' \
		< flickrnet.pc.in > flickrnet.pc
	${INSTALL_DATA} ${WRKSRC}/flickrnet.pc ${PREFIX}/lib/pkgconfig

.include <bsd.port.mk>
