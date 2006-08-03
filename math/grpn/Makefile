# $OpenBSD: Makefile,v 1.13 2006/08/03 20:04:51 espie Exp $

COMMENT=	"graphical reverse polish notation calculator"

DISTNAME=	grpn-1.1.2
CATEGORIES=	math x11

HOMEPAGE=	http://lashwhip.com/grpn.html

MASTER_SITES=	http://lashwhip.com/grpn/ \
		ftp://lashwhip.com/pub/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xi c glib gmodule iconv intl m

LIB_DEPENDS=	gtk.>=1.2,gdk.>=1.2::x11/gtk+

MAKE_FLAGS=	CC="${CC}"
ALL_TARGET=

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/grpn ${PREFIX}/bin

.include <bsd.port.mk>
