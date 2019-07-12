# $OpenBSD: Makefile,v 1.23 2019/07/12 20:44:44 sthen Exp $

COMMENT=	library and toolset to operate arrays of data

DISTNAME=	orc-0.4.29
CATEGORIES=	devel
MASTER_SITES=	https://gstreamer.freedesktop.org/src/orc/
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	orc-0.4		7.0 \
		orc-test-0.4	6.0

HOMEPAGE=	http://code.entropywave.com/projects/orc/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c m pthread

USE_GMAKE=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69

.include <bsd.port.mk>
