# $OpenBSD: Makefile,v 1.15 2004/12/15 13:57:57 alek Exp $

COMMENT=		"Object Activation Framework for GNOME"

DISTNAME=		oaf-0.6.10
CATEGORIES=		devel x11/gnome
HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/oaf/0.6/}
EXTRACT_SUFX=           .tar.bz2

LIB_DEPENDS=		ORBit.5,IIOP,ORBitCosNaming,ORBitutil::devel/ORBit \
			xml.9::textproc/libxml1 \
			popt::devel/popt

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c glib gmodule iconv intl m wrap z

USE_X11=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED} \
			--disable-orbittest # XXX problems with warnings
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${WRKSRC}/liboaf/.libs -L${LOCALBASE}/lib"

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/oaf; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/oaf/

.include <bsd.port.mk>
