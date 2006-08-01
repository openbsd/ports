# $OpenBSD: Makefile,v 1.13 2006/08/01 10:50:19 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	"XMMS input plugin for playing FLAC files"

VERSION=	1.1.2
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
WANTLIB=		X11 Xext Xi gdk glib gmodule gtk iconv intl m

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=flac/}

LIB_DEPENDS=	xmms.>=4::audio/xmms \
		FLAC.>=7::audio/flac

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-libiconv-prefix="${LOCALBASE}" \
		--with-ogg="${LOCALBASE}" \
		--with-xmms-prefix="${LOCALBASE}"

MAKE_FILE=	${FILESDIR}/Makefile

# "obj" is magic to our make(1)
post-configure:
	@rm -rf ${WRKSRC}/obj

NO_REGRESS=	Yes

.include <bsd.port.mk>
