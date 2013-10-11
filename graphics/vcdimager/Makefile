# $OpenBSD: Makefile,v 1.16 2013/10/11 23:49:52 naddy Exp $

COMMENT=	(S)VCD authoring software

DISTNAME=	vcdimager-0.7.23
REVISION=	1
CATEGORIES=	graphics

SHARED_LIBS +=  vcdinfo 0.0 # .2.0

MASTER_SITES=	${MASTER_SITE_GNU:=vcdimager/}

HOMEPAGE=	http://www.vcdimager.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m z xml2>=11 cdio iso9660 popt

MODULES=		devel/gettext

USE_GMAKE=		Yes

LIB_DEPENDS=		textproc/libxml \
			audio/libcdio \
			devel/popt

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

SEPARATE_BUILD=		Yes

.include <bsd.port.mk>
