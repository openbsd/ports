# $OpenBSD: Makefile,v 1.17 2013/10/05 19:54:45 brad Exp $

COMMENT=	library and toolset to operate arrays of data

DISTNAME=	orc-0.4.18
CATEGORIES=	devel
MASTER_SITES=	http://code.entropywave.com/download/orc/

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
