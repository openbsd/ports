# $OpenBSD: Makefile,v 1.21 2017/09/25 09:16:12 robert Exp $

COMMENT=	library and toolset to operate arrays of data

DISTNAME=	orc-0.4.24
CATEGORIES=	devel
MASTER_SITES=	http://gstreamer.freedesktop.org/src/orc/
EXTRACT_SUFX=	.tar.xz

REVISION=	0

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
