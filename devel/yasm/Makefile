# $OpenBSD: Makefile,v 1.3 2008/09/12 14:26:00 brad Exp $

COMMENT=	complete rewrite of the NASM assembler

DISTNAME=	yasm-0.7.1
CATEGORIES=	devel lang

MAINTAINER=	Shaun Amott <shaun@inerd.com>

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
