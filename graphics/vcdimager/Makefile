# $OpenBSD: Makefile,v 1.10 2010/11/17 08:05:16 espie Exp $

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

WANTLIB += c m z xml2>=11 cdio iso9660 popt

MODULES=		converters/libiconv

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
USE_GROFF =		Yes

LIB_DEPENDS=		textproc/libxml \
			audio/libcdio \
			devel/popt

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

SEPARATE_BUILD=		concurrent

.include <bsd.port.mk>
