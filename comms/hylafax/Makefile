# $OpenBSD: Makefile,v 1.65 2012/04/14 15:13:30 naddy Exp $

COMMENT=		send/receive faxes and share modems
DISTNAME=		hylafax-6.0.5
CATEGORIES=		comms

REVISION=		1

HOMEPAGE=		http://www.HylaFAX.org/

MAINTAINER=		Giovanni Bechis <giovanni@openbsd.org>

MASTER_SITES=		ftp://ftp.hylafax.org/source/ \
			ftp://ftp.ntua.gr/pub/net/hylafax/source/ \
			ftp://mirror.aarnet.edu.au/pub/hylafax/source/

# License: BSD
# http://www.hylafax.org/HylaFAQ/copyright.html
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=		a4
FLAVOR?=

WANTLIB=		c jbig m stdc++ tiff util z
MODULES=		devel/gettext

BUILD_DEPENDS=		print/ghostscript/gnu
RUN_DEPENDS=		mail/metamail
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
			INETDCONF=/etc/inetd.conf MKFIFO=/sbin/mkfifo \
			SCRIPT_SH=/bin/ksh

.if ${FLAVOR:Ma4}
CONFIGURE_ARGS+=	--with-PAGESIZE=A4
.endif

FAKE_FLAGS=	ROOT=${WRKINST} SPOOL=${PREFIX}/libdata/hylafax

NO_REGRESS=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

.include <bsd.port.mk>
