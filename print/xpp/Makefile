# $OpenBSD: Makefile,v 1.6 2009/05/22 13:51:08 ajacoutot Exp $

COMMENT=		X Printing Panel

DISTNAME=		xpp-1.5
PKGNAME=		${DISTNAME}p2
CATEGORIES=		print sysutils

HOMEPAGE=		http://cups.sourceforge.net/xpp/

MAINTAINER=		Marc Balmer <mbalmer@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 Xau Xdmcp Xext asn1 c crypto gcrypt gnutls
WANTLIB += gpg-error gssapi krb5 m pthread stdc++ z

MODULES=		devel/gettext

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
