# $OpenBSD: Makefile,v 1.35 2001/10/15 15:51:44 espie Exp $
# $FreeBSD: Makefile,v 1.12 1999/06/08 23:41:54 steve Exp $
# Uses pthreads

COMMENT=	"X-Chat is an X11 IRC client"

MAJOR=		1.8
VERSION=	${MAJOR}.4
DISTNAME=	xchat-${VERSION}
CATEGORIES=	net x11
NEED_VERSION=	1.448

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

FLAVORS=	no_ssl
FLAVOR?=

CONFIGURE_ARGS+= --disable-imlib --disable-python --disable-gnome \
    --disable-zvt
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

USE_GMAKE=	Yes
USE_X11=	Yes

LIB_DEPENDS=	gdk_pixbuf::graphics/gdk-pixbuf

.if ${FLAVOR} != "no_ssl"
CONFIGURE_ARGS+= --enable-openssl="/usr"
.endif

DOCDIR=		${PREFIX}/share/doc/xchat

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/* ${DOCDIR}

.include <bsd.port.mk>
