# $OpenBSD: Makefile,v 1.19 2001/11/01 08:27:14 wilfried Exp $

COMMENT=	"desktop organizer software for the palm pilot"

DISTNAME=	jpilot-0.99
PKGNAME=	${DISTNAME}p1
CATEGORIES=	comms palm
NEED_VERSION=	1.475

MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.jpilot.org/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.0-ltconfig \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.0-ltmain_sh \
		patch-*

LIB_DEPENDS=	pisock.3:pilot-link-*:comms/pilot-link \
		gtk.1.2,gdk.1.2:gtk+-*:x11/gtk+

USE_X11=	Yes
CONFIGURE_STYLE= autoconf dest
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		CFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/jpilot
	${INSTALL_DATA} ${WRKSRC}/docs/plugin.html ${PREFIX}/share/doc/jpilot
	${INSTALL_DATA} ${WRKSRC}/docs/manual.html ${PREFIX}/share/doc/jpilot

.include <bsd.port.mk>
