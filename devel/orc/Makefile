# $OpenBSD: Makefile,v 1.3 2010/04/09 21:56:05 sthen Exp $

COMMENT=	library and toolset to operate arrays of data

DISTNAME=	orc-0.4.4
CATEGORIES=	devel
MASTER_SITES=	http://code.entropywave.com/download/orc/

SHARED_LIBS=	orc-0.4		1.0 \
		orc-float-0.4	0.0 \
		orc-test-0.4	0.1

HOMEPAGE=	http://code.entropywave.com/projects/orc/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c m pthread

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.64

.include <bsd.port.mk>
