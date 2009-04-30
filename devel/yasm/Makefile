# $OpenBSD: Makefile,v 1.5 2009/04/30 21:31:49 sthen Exp $

COMMENT=	complete rewrite of the NASM assembler

DISTNAME=	yasm-0.8.0
CATEGORIES=	devel lang

MAINTAINER=	Brad Smith <brad@comstyle.com>

HOMEPAGE=	http://www.tortall.net/projects/yasm/

# Yasm's license is BSD-style, with some
# portions (currently) under the LGPL.
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c

MASTER_SITES=		${HOMEPAGE}/releases/

MODULES=		devel/gettext

CXXFLAGS+=		-I${LOCALBASE}/include

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib"

INSTALL_TARGET= 	install install-man

.include <bsd.port.mk>
