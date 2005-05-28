# $OpenBSD: Makefile,v 1.1.1.1 2005/05/28 09:06:33 alek Exp $

COMMENT=		"library of assorted spiffy things"

DISTNAME=		libast-0.6.1
CATEGORIES=		devel

HOMEPAGE=		http://eterm.sourceforge.net/

MAINTAINER=		Francois Briere <fbriere@imaginatif.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE m SM freetype X11 Xext


MASTER_SITES=		http://www.eterm.org/download/

LIB_DEPENDS=		Imlib2.2::graphics/imlib2

USE_X11=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
