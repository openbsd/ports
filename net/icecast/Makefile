# $OpenBSD: Makefile,v 1.25 2004/10/16 15:26:39 robert Exp $

COMMENT=	"server for streaming Ogg Vorbis and MP3"

DISTNAME=	icecast-2.0.2
CATEGORIES=	net audio

HOMEPAGE=	http://www.icecast.org/

MAINTAINER=	Moritz Grimm <gtgbr@gmx.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://svn.xiph.org/releases/icecast/

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --localstatedir=/var
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS=	curl.2::net/curl \
		xslt.1::textproc/libxslt \
		vorbis.2,vorbisenc.2::audio/libvorbis

SEPARATE_BUILD=	simple

post-build:
	@sed -e 's,##PREFIX##,${TRUEPREFIX},g' < ${FILESDIR}/README.OpenBSD > \
		${WRKBUILD}/README.OpenBSD

post-install:
	${INSTALL_DATA} ${WRKBUILD}/README.OpenBSD \
		${PREFIX}/share/doc/icecast/README.OpenBSD

.include <bsd.port.mk>
