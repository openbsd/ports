# $OpenBSD: Makefile,v 1.6 2003/04/18 00:28:40 naddy Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"XMMS input plugin for playing FLAC files"

VERSION=	1.1.0
PKGNAME=	xmms-flac-${VERSION}
DISTNAME=	flac-${VERSION}
CATEGORIES=	audio
HOMEPAGE=	http://flac.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=flac/}
MASTER_SITES0=	ftp://ftp.debian.org/debian/pool/main/f/flac/ \
		ftp://ftp.de.debian.org/debian/pool/main/f/flac/
PATCHFILES=	flac_${VERSION}-3.diff.gz:0
PATCH_DIST_STRIP= -p1

LIB_DEPENDS=	xmms.3::audio/xmms \
		FLAC.5::audio/flac

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-libiconv-prefix="${LOCALBASE}" \
		--with-ogg="${LOCALBASE}" \
		--with-xmms-prefix="${LOCALBASE}"

MAKE_FILE=	${FILESDIR}/Makefile

# "obj" is magic to our make(1)
post-configure:
	@rm -rf ${WRKSRC}/obj

NO_REGRESS=	Yes

.include <bsd.port.mk>
