# $OpenBSD: Makefile,v 1.43 2003/04/19 15:45:22 couderc Exp $
# $FreeBSD: Makefile,v 1.12 1999/06/08 23:41:54 steve Exp $

COMMENT=	"X-Chat is an X11 IRC client"

MAJOR=		1.8
VERSION=	${MAJOR}.11
DISTNAME=	xchat-${VERSION}
CATEGORIES=	net x11

MASTER_SITES=	http://xchat.org/files/source/${MAJOR}/ \
		http://xchat.linuxpower.org/files/source/${MAJOR}/

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.xchat.org/

MAINTAINER=	Damien Couderc <couderc@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	gdk_pixbuf::graphics/gdk-pixbuf

MODULES=	iconv gettext

USE_GMAKE=	Yes
USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --disable-python --disable-gnome \
		 --disable-zvt --disable-mmx \
		 --enable-ipv6 --enable-openssl="/usr" \
		 --enable-japanese-conv \
		 --with-libiconv-prefix="${LOCALBASE}"

DOCDIR=		${PREFIX}/share/doc/xchat

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCDIR}
	@rm -rf ${WRKSRC}/doc/CVS
	${INSTALL_DATA} ${WRKSRC}/doc/* ${DOCDIR}

.include <bsd.port.mk>
