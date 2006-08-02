# $OpenBSD: Makefile,v 1.8 2006/08/02 10:10:35 espie Exp $

COMMENT=	"lightweight image viewer"

DISTNAME=	feh-1.3.4
CATEGORIES=	graphics

HOMEPAGE=	http://www.linuxbrit.co.uk/feh/

MAINTAINER=	Victor Sahlstedt <salan@legonet.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		Imlib2 X11 Xext c freetype jpeg m png z

MASTER_SITES=	http://www.linuxbrit.co.uk/downloads/

LIB_DEPENDS=	giblib.>=1::devel/giblib

USE_X11=	Yes
CONFIGURE_STYLE=gnu

NO_REGRESS=	Yes

.include <bsd.port.mk>
