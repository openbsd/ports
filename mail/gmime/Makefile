# $OpenBSD: Makefile,v 1.5 2007/12/15 20:52:31 martynas Exp $

COMMENT=		library for the creation and parsing of MIME messages

DISTNAME=		gmime-2.2.12
SHARED_LIBS +=	gmime-2.0            0.2      # .4.12
CATEGORIES=		mail devel

HOMEPAGE=		http://spruce.sourceforge.net/gmime/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		z pcre

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gmime/2.2/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

LIB_DEPENDS=		glib-2.0,gmodule-2.0,gobject-2.0,gthread-2.0::devel/glib2 

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS= 	--with-libiconv-prefix="${LOCALBASE}" \
			--disable-mono \
			--disable-gtkdoc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
