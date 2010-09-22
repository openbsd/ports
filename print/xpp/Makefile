# $OpenBSD: Makefile,v 1.11 2010/09/22 12:51:50 ajacoutot Exp $

COMMENT=		X Printing Panel

DISTNAME=		xpp-1.5
CATEGORIES=		print sysutils

REVISION=		6

HOMEPAGE=		http://cups.sourceforge.net/xpp/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 Xau Xdmcp Xext asn1 c crypto gssapi krb5
WANTLIB += m pthread ssl stdc++ z cups jpeg fltk fltk_images png

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=cups/}

LIB_DEPENDS=		::print/cups \
			::x11/fltk

CONFIGURE_STYLE=	gnu
USE_GMAKE=		Yes
USE_X11=		Yes
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
