# $OpenBSD: Makefile,v 1.29 2001/07/25 11:19:38 shell Exp $
# $FreeBSD: Makefile,v 1.12 1999/06/08 23:41:54 steve Exp $

COMMENT=	"X-Chat is an X11 IRC client"

MAJOR=		1.8
VERSION=	${MAJOR}.1
DISTNAME=	xchat-${VERSION}
CATEGORIES=	net x11
NEED_VERSION=	1.427

MASTER_SITES=	http://xchat.org/files/source/${MAJOR}/ \
		http://xchat.linuxpower.org/files/source/${MAJOR}/

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.xchat.org/

MAINTAINER=	Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu

FLAVORS=	ssl
FLAVOR?=

CONFIGURE_ARGS+= --disable-imlib --disable-python --disable-gnome
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

USE_GMAKE=	Yes
USE_X11=	Yes

LIB_DEPENDS=	gtk.1.2::x11/gtk+ \
		gdk_pixbuf::graphics/gdk-pixbuf

.if ${FLAVOR:L:Mssl}
CONFIGURE_ARGS+= --enable-openssl="/usr"
.endif

DOCDIR=		${PREFIX}/share/doc/xchat

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/* ${DOCDIR}

.include <bsd.port.mk>
