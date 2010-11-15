# $OpenBSD: Makefile,v 1.60 2010/11/15 10:05:05 jasper Exp $

COMMENT=		send/receive faxes and share modems
DISTNAME=		hylafax-4.4.6
REVISION=		0
CATEGORIES=		comms

HOMEPAGE=		http://www.HylaFAX.org/

MAINTAINER=		Giovanni Bechis <giovanni@openbsd.org>

MASTER_SITES=		ftp://ftp.hylafax.org/source/

# License: BSD
# http://www.hylafax.org/HylaFAQ/copyright.html
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=		a4
FLAVOR?=

WANTLIB=		c jbig m stdc++ tiff util z

BUILD_DEPENDS=		print/ghostscript/gnu
RUN_DEPENDS=		mail/metamail
LIB_DEPENDS=		graphics/jbigkit \
			graphics/tiff

CONFIGURE_STYLE=	simple
USE_GMAKE=		Yes
USE_GROFF =		Yes

CONFIGURE_ARGS=		--nointeractive \
			--disable-pam \
			--with-CC="${CC}" \
			--with-CXX="${CXX}" \
			--with-INSTALL=""

CONFIGURE_ENV+=		CCOMPILER="${CC}" CXXCOMPILER="${CXX}" \
			GCOPTS="${CFLAGS}" GCXXOPTS="${CXXFLAGS}" \
			PREFIX="${PREFIX}" LOCALBASE="${LOCALBASE}" \
			SCRIPT_SH=/bin/ksh

.if ${FLAVOR:L} == "a4"
CONFIGURE_ARGS+=	--with-PAGESIZE=A4
.endif

FAKE_FLAGS=	ROOT=${WRKINST} SPOOL=${PREFIX}/libdata/hylafax

NO_REGRESS=	Yes

pre-configure:
	@perl -pi -e 's,%%LOCALBASE%%,${LOCALBASE},' ${WRKSRC}/configure

.include <bsd.port.mk>
