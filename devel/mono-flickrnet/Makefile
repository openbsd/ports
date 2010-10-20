# $OpenBSD: Makefile,v 1.3 2010/10/20 10:16:50 robert Exp $

COMMENT=	Flickr .Net API Library

V=		2.2.0
DISTNAME=	FlickrNet${V:C/^([0-9]+\.[0-9]+).*/\1/}-Src-48055
PKGNAME=	mono-flickrnet-${V}p1
CATEGORIES=	devel graphics

HOMEPAGE=	http://www.codeplex.com/FlickrNet
MASTER_SITES=	http://blade2k.humppa.hu/

# Common Public License 1.0
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MODULES=	lang/mono

WRKSRC=		${WRKDIST}/FlickrNet

do-build:
	cd ${WRKSRC} && XBUILD_COLORS=disable xbuild FlickrNet.csproj

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/mono/flickrnet
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	cd ${WRKSRC}/bin/Debug && ${INSTALL_DATA} FlickrNet.dll FlickrNet.dll.mdb \
		${PREFIX}/lib/mono/flickrnet
	cd ${WRKSRC} && sed -e 's|@prefix@|${TRUEPREFIX}|g;s|@version@|${V}|g' \
		< flickrnet.pc.in > flickrnet.pc
	${INSTALL_DATA} ${WRKSRC}/flickrnet.pc ${PREFIX}/lib/pkgconfig

.include <bsd.port.mk>
