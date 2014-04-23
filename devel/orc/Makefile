# $OpenBSD: Makefile,v 1.18 2014/04/23 19:35:26 brad Exp $

COMMENT=	library and toolset to operate arrays of data

DISTNAME=	orc-0.4.19
CATEGORIES=	devel
MASTER_SITES=	http://gstreamer.freedesktop.org/src/orc/

SHARED_LIBS=	orc-0.4		5.0 \
		orc-test-0.4	4.0

HOMEPAGE=	http://code.entropywave.com/projects/orc/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m pthread

USE_GMAKE=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69

.include <bsd.port.mk>
