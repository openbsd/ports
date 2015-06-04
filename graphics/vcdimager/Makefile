# $OpenBSD: Makefile,v 1.19 2015/06/04 06:26:29 ajacoutot Exp $

COMMENT=		(S)VCD authoring software

DISTNAME=		vcdimager-0.7.24
CATEGORIES=		graphics multimedia

SHARED_LIBS +=  vcdinfo              0.0      # 2.0

MASTER_SITES=		${MASTER_SITE_GNU:=vcdimager/}

HOMEPAGE=		http://www.vcdimager.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c cdio iso9660 lzma m popt pthread xml2 z

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
