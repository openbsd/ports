# $OpenBSD: Makefile,v 1.28 2003/11/21 04:54:20 jolan Exp $

COMMENT=	"HTML editor for experienced web designers"

VERSION=	0.11
DISTNAME=	bluefish-${VERSION}
CATEGORIES=	www 
HOMEPAGE=	http://bluefish.openoffice.nl/

MAINTAINER=	Damien Couderc <couderc@openbsd.org>

MASTER_SITES=	http://pkedu.fbt.eitn.wau.nl/~olivier/downloads/ \
		ftp://bluefish.advancecreations.com/bluefish/downloads/ \
		http://bluefish.mrball.net/downloads/ \
		ftp://ftp.ratisbona.com/pub/bluefish/downloads/ \
		http://bluefish.shellhung.org/downloads/

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

LIB_DEPENDS=	gtk-x11-2.0.=0,gdk-x11-2.0.=0::x11/gtk+2 \
		pcre::devel/pcre \
		aspell::textproc/aspell/core

CONFIGURE_STYLE=gnu dest
CONFIGURE_ARGS=	--with-icon-path='$${DESTDIR}${PREFIX}/share/pixmaps/'
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

USE_GMAKE=	Yes

NO_REGRESS=	Yes

pre-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps

.include <bsd.port.mk>
