# $OpenBSD: Makefile,v 1.10 2002/05/15 18:05:18 espie Exp $

COMMENT=		"Object Activation Framework for GNOME"

DISTNAME=		oaf-0.6.8
CATEGORIES=		devel
NEED_VERSION=   	1.504
HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Nils Nordman <nino@nforced.com>

MASTER_SITES=		${MASTER_SITE_GNOME:=stable/sources/oaf/}
EXTRACT_SUFX=           .tar.bz2

LIB_DEPENDS=		ORBit.5,IIOP,ORBitCosNaming,ORBitutil::devel/ORBit \
			xml.9::textproc/libxml1 \
			popt::devel/popt

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${WRKSRC}/liboaf/.libs -L${LOCALBASE}/lib"

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/oaf; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/oaf/

.include <bsd.port.mk>
