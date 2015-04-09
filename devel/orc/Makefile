# $OpenBSD: Makefile,v 1.19 2015/04/09 20:47:15 sthen Exp $

COMMENT=	library and toolset to operate arrays of data

DISTNAME=	orc-0.4.23
CATEGORIES=	devel
MASTER_SITES=	http://gstreamer.freedesktop.org/src/orc/
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	orc-0.4		6.0 \
		orc-test-0.4	5.0

HOMEPAGE=	http://code.entropywave.com/projects/orc/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m pthread

USE_GMAKE=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69

.include <bsd.port.mk>
