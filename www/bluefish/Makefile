# $OpenBSD: Makefile,v 1.24 2003/03/29 15:22:14 couderc Exp $

COMMENT=	"HTML editor for experienced web designers"

VERSION=	0.9
DISTNAME=	bluefish-${VERSION}
CATEGORIES=	www 
HOMEPAGE=	http://bluefish.openoffice.nl/

MAINTAINER=	Damien Couderc <couderc@openbsd.org>

MASTER_SITES=	http://pkedu.fbt.eitn.wau.nl/~olivier/downloads/ \
		ftp://bluefish.advancecreations.com/bluefish/downloads/ \
		http://bluefish.mrball.net/downloads/ \
		ftp://ftp.ratisbona.com/pub/bluefish/downloads/ \
		http://bluefish.shellhung.org/downloads/

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

LIB_DEPENDS=	gtk-x11-2.0.=0,gdk-x11-2.0.=0::x11/gtk+2 \
		pcre::devel/pcre \
		aspell::textproc/aspell

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

USE_GMAKE=	Yes

NO_REGRESS=	Yes

.include <bsd.port.mk>
