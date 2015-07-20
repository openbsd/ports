# $OpenBSD: Makefile,v 1.73 2015/07/20 22:00:54 ajacoutot Exp $

COMMENT=		send/receive faxes and share modems
DISTNAME=		hylafax-6.0.6
REVISION=		5
CATEGORIES=		comms

HOMEPAGE=		http://www.HylaFAX.org/

MASTER_SITES=		http://ftp.hylafax.org/source/ \
			ftp://ftp.hylafax.org/source/ \
			ftp://ftp.ntua.gr/pub/net/hylafax/source/ \
			http://mirror.aarnet.edu.au/pub/hylafax/source/

# License: BSD
# http://www.hylafax.org/HylaFAQ/copyright.html
PERMIT_PACKAGE_CDROM=	Yes

FLAVORS=		a4
FLAVOR?=

WANTLIB=		c jbig m stdc++ tiff util z
MODULES=		devel/gettext

BUILD_DEPENDS=		print/ghostscript/gnu
RUN_DEPENDS=		print/ghostscript/gnu \
			mail/metamail
LIB_DEPENDS=		graphics/jbigkit \
			graphics/tiff

CONFIGURE_STYLE=	simple
USE_GMAKE=		Yes
USE_GROFF =		Yes

CONFIGURE_ARGS=		--nointeractive \
			--disable-pam \
			--disable-nls \
			--with-CC="${CC}" \
			--with-CXX="${CXX}" \
			--with-INSTALL="" \
			--with-OPTIMIZER=""

CONFIGURE_ENV+=		CCOMPILER="${CC}" CXXCOMPILER="${CXX}" \
			GCOPTS="${CFLAGS}" GCXXOPTS="${CXXFLAGS}" \
			PREFIX="${PREFIX}" LOCALBASE="${LOCALBASE}" \
			DIR_LIBDATA=${TRUEPREFIX}/libdata/hylafax/etc \
			INETDCONF=/etc/inetd.conf MKFIFO=/sbin/mkfifo \
			SCRIPT_SH=/bin/ksh

.if ${FLAVOR:Ma4}
CONFIGURE_ARGS+=	--with-PAGESIZE=A4
.endif

FAKE_FLAGS=	ROOT=${WRKINST} SPOOL=${PREFIX}/libdata/hylafax

NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

post-install:
	echo "FontMap: ${LOCALBASE}/share/fonts/ghostscript" >${PREFIX}/libdata/hylafax/etc/hyla.conf

.include <bsd.port.mk>
