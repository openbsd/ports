# $OpenBSD: Makefile,v 1.53 2008/02/08 23:10:45 okan Exp $

COMMENT=		send/receive faxes and share modems
DISTNAME=		hylafax-4.4.4
CATEGORIES=		comms

HOMEPAGE=		http://www.HylaFAX.org/

MAINTAINER=		Giovanni Bechis <g.bechis@snb.it>

MASTER_SITES=		ftp://ftp.hylafax.org/source/

# License: BSD
# http://www.hylafax.org/HylaFAQ/copyright.html
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=		a4
FLAVOR?=

WANTLIB=		c m stdc++ util z

BUILD_DEPENDS=		:ghostscript-*:print/ghostscript/gnu
RUN_DEPENDS=		::mail/metamail
LIB_DEPENDS=		jbig::graphics/jbigkit \
			tiff::graphics/tiff

CONFIGURE_STYLE=	simple
USE_GMAKE=		Yes

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

post-install:
	@sed -e s,%%PREFIX%%,${TRUEPREFIX},g ${FILESDIR}/README.OpenBSD > \
		${WRKBUILD}/README.OpenBSD
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hylafax/
	${INSTALL_DATA} ${WRKBUILD}/README.OpenBSD ${PREFIX}/share/doc/hylafax/

.include <bsd.port.mk>
