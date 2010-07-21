# $OpenBSD: Makefile,v 1.5 2010/07/21 20:30:21 sthen Exp $

COMMENT=	library and toolset to operate arrays of data

DISTNAME=	orc-0.4.6
CATEGORIES=	devel
MASTER_SITES=	http://code.entropywave.com/download/orc/

SHARED_LIBS=	orc-0.4		2.0 \
		orc-test-0.4	1.0

HOMEPAGE=	http://code.entropywave.com/projects/orc/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c m pthread

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.65

.include <bsd.port.mk>
