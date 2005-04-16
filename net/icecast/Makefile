# $OpenBSD: Makefile,v 1.28 2005/04/16 15:37:31 sturm Exp $

COMMENT=	"server for streaming Ogg Vorbis and MP3"

DISTNAME=	icecast-2.2.0
PKGNAME=	${DISTNAME}p0
CATEGORIES=	net audio

HOMEPAGE=	http://www.icecast.org/

MAINTAINER=	Moritz Grimm <gtgbr@gmx.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto iconv m ogg pthread ssl xml2 z

MASTER_SITES=	http://downloads.us.xiph.org/releases/icecast/

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --localstatedir=/var --without-theora
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS=	curl.2::net/curl \
		xslt.3::textproc/libxslt \
		vorbis.3::audio/libvorbis

SEPARATE_BUILD=	simple

post-build:
	@sed -e 's,##PREFIX##,${TRUEPREFIX},g' < ${FILESDIR}/README.OpenBSD > \
		${WRKBUILD}/README.OpenBSD

post-install:
	${INSTALL_DATA} ${WRKBUILD}/README.OpenBSD \
		${PREFIX}/share/doc/icecast/README.OpenBSD

.include <bsd.port.mk>
