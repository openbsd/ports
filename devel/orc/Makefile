# $OpenBSD: Makefile,v 1.7 2011/01/18 11:37:40 landry Exp $

COMMENT=	library and toolset to operate arrays of data

DISTNAME=	orc-0.4.11
CATEGORIES=	devel
MASTER_SITES=	http://code.entropywave.com/download/orc/

SHARED_LIBS=	orc-0.4		3.0 \
		orc-test-0.4	2.0

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
# Should be 2.65
AUTOCONF_VERSION= 2.64

# Workaround for a known issue with the
# PowerPC AltiVec backend.
.if ${MACHINE_ARCH} == "powerpc"
CFLAGS+=	-O0
.endif

.include <bsd.port.mk>
