# $OpenBSD: Makefile,v 1.1.1.1 2004/04/12 07:10:45 jolan Exp $
NOT_FOR_ARCHS=	${NO_SHARED_ARCHS} sparc64

COMMENT=	"strips DRM from iTMS protection aac audio files"
DISTNAME=	playfair-0.5.0
CATEGORIES=	converters audio
MASTER_SITES=	http://sarovar.org/download.php/270/

HOMEPAGE=	http://playfair.sarovar.org/

# GPL / Free Speech Issue
PERMIT_DISTFILES_CDROM=	"Free Speech Issue"
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	"Free Speech Issue"
PERMIT_PACKAGE_FTP=	"Free Speech Issue"

CONFIGURE_STYLE=gnu

# XXX workaround libtool weirdness
do-install:
	${INSTALL_DATA} \
		${WRKSRC}/src/mp4ff/{drmserr,mp4ff,mp4ff_int_types,mp4ffint}.h \
		${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/src/mp4v2/{mp4,mpeg4ip,systems}.h \
		${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/src/mp4ff/.libs/libmp4ff.so.0.0 \
		${WRKSRC}/src/mp4v2/.libs/libmp4v2.so.0.0 \
		${WRKSRC}/src/playfair/.libs/libplayfair.so.0.0 \
		${PREFIX}/lib
	${INSTALL_PROGRAM} ${WRKSRC}/src/cli/.libs/playfair ${PREFIX}/bin

.include <bsd.port.mk>
