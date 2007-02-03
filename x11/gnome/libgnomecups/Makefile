# $OpenBSD: Makefile,v 1.2 2007/02/03 20:39:01 jasper Exp $

BROKEN= 		"need fixes to work on *BSD"

COMMENT=		"GNOME library for CUPS interaction"

DISTNAME=		libgnomecups-0.2.2
SHARED_LIBS=		gnomecups-1.0	1.0
CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org/projects/gnome-print/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		gcrypt gnutls gpg-error m pthread z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libgnomecups/0.2/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		:p5-XML-Parser-*:textproc/p5-XML-Parser
LIB_DEPENDS=		glib-2.0.>=0,gobject-2.0.>=0,gthread-2.0.>=0::devel/glib2 \
    			cups::print/cups

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
