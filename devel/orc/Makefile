# $OpenBSD: Makefile,v 1.6 2010/11/19 08:58:18 jasper Exp $

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
AUTOCONF_VERSION= 2.65

# Workaround for a known issue with the
# PowerPC AltiVec backend.
.if ${MACHINE_ARCH} == "powerpc"
CFLAGS+=	-O0
.endif

.include <bsd.port.mk>
