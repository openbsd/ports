# $OpenBSD: Makefile,v 1.10 2009/11/22 16:40:03 ajacoutot Exp $

COMMENT=		X Printing Panel

DISTNAME=		xpp-1.5
PKGNAME=		${DISTNAME}p5
CATEGORIES=		print sysutils

HOMEPAGE=		http://cups.sourceforge.net/xpp/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 Xau Xdmcp Xext asn1 c crypto gssapi krb5
WANTLIB += m pthread ssl stdc++ z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=cups/}

LIB_DEPENDS=		cups::print/cups \
			jpeg.>=62::graphics/jpeg \
			fltk.>=4,fltk_images.>=4::x11/fltk \
			png.>=4::graphics/png

CONFIGURE_STYLE=	gnu
USE_GMAKE=		Yes
USE_X11=		Yes
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
