# $OpenBSD: Makefile,v 1.1.1.1 2004/07/01 21:50:44 robert Exp $

COMMENT=		"utility library including a imlib2 wrapper"

DISTNAME=		giblib-1.2.3
CATEGORIES=		devel

HOMEPAGE=		http://www.linuxbrit.co.uk/giblib/

MAINTAINER=		Victor Sahlstedt <cvss@home.se>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.linuxbrit.co.uk/downloads/

LIB_DEPENDS=		Imlib2.1::graphics/imlib2

USE_X11=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
