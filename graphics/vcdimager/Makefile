# $OpenBSD: Makefile,v 1.7 2010/06/27 21:20:43 ajacoutot Exp $

COMMENT=	(S)VCD authoring software

DISTNAME=	vcdimager-0.7.23
CATEGORIES=	graphics

SHARED_LIBS +=  vcdinfo 0.0 # .2.0

MASTER_SITES=	${MASTER_SITE_GNU:=vcdimager/}

HOMEPAGE=	http://www.vcdimager.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c m z

MODULES=		converters/libiconv

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

LIB_DEPENDS=		xml2.>=11::textproc/libxml \
			cdio,iso9660::audio/libcdio \
			popt::devel/popt

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

SEPARATE_BUILD=		concurrent

.include <bsd.port.mk>
