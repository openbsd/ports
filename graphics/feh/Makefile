# $OpenBSD: Makefile,v 1.2 2004/11/09 19:38:03 naddy Exp $

COMMENT=	"lightweight image viewer"

DISTNAME=	feh-1.2.9
CATEGORIES=	graphics

HOMEPAGE=	http://www.linuxbrit.co.uk/feh/

MAINTAINER=	Victor Sahlstedt <cvss@home.se>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.linuxbrit.co.uk/downloads/

LIB_DEPENDS=	giblib.1::devel/giblib

USE_X11=	Yes
CONFIGURE_STYLE=gnu

NO_REGRESS=	Yes

.include <bsd.port.mk>
