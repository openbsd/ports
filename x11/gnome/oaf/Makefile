# $OpenBSD: Makefile,v 1.2 2001/09/14 14:41:30 todd Exp $

COMMENT=		"Object Activation Framework for GNOME"
V=			0.6.5
DISTNAME=		oaf-${V}
CATEGORIES=		devel
NEED_VERSION=   	1.455
HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Nils Nordman <nino@nforced.com>

MASTER_SITES=		${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= 	unstable/sources/oaf

LIB_DEPENDS=		ORBit.5::devel/ORBit \
			xml.9::textproc/libxml1 \
			popt::devel/popt

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	cp -r ${PREFIX}/../../etc/* ${PREFIX}/share/oaf/

.include <bsd.port.mk>
