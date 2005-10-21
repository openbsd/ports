# $OpenBSD: Makefile,v 1.31 2005/10/21 15:59:54 naddy Exp $

COMMENT=	"server for streaming Ogg Vorbis and MP3"

DISTNAME=	icecast-2.3.0
CATEGORIES=	net audio

HOMEPAGE=	http://www.icecast.org/

MAINTAINER=	Moritz Grimm <gtgbr@gmx.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto iconv m ogg pthread ssl xml2 z

MASTER_SITES=	http://downloads.xiph.org/releases/icecast/

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --localstatedir=/var --with-theora=${LOCALBASE}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

USE_LIBTOOL=	Yes
LIB_DEPENDS=	curl.2::net/curl \
		xslt.3::textproc/libxslt \
		vorbis.3::audio/libvorbis \
		speex.3::audio/speex \
		theora.1::multimedia/libtheora

SEPARATE_BUILD=	simple

post-build:
	@sed -e 's,##PREFIX##,${TRUEPREFIX},g' < ${FILESDIR}/README.OpenBSD > \
		${WRKBUILD}/README.OpenBSD

post-install:
	${INSTALL_DATA} ${WRKBUILD}/README.OpenBSD \
		${PREFIX}/share/doc/icecast/README.OpenBSD

.include <bsd.port.mk>
