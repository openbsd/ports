COMMENT=		send/receive faxes and share modems

DISTNAME=		hylafax-7.0.11
REVISION=		0
CATEGORIES=		comms

HOMEPAGE=		https://hylafax.sourceforge.io/
SITES=			${SITE_SOURCEFORGE:=hylafax/}

# License: BSD
# http://www.hylafax.org/HylaFAQ/copyright.html
PERMIT_PACKAGE=		Yes

FLAVORS=		a4
FLAVOR?=

WANTLIB=		c crypto jbig m ${COMPILER_LIBCXX} ssl tiff util z
WANTLIB+=		jpeg lcms2

COMPILER=		base-clang ports-gcc base-gcc

BUILD_DEPENDS=		print/ghostscript/gnu
RUN_DEPENDS=		print/ghostscript/gnu \
			mail/metamail
LIB_DEPENDS=		graphics/jbigkit \
			graphics/tiff

CONFIGURE_STYLE=	simple
USE_GMAKE=		Yes

CONFIGURE_ARGS=		--nointeractive \
			--disable-pam \
			--disable-ldap \
			--with-CCOMPILER="${CC}" \
			--with-CXXCOMPILER="${CXX}" \
			--with-GCOPTS="${CFLAGS}" \
			--with-GCXXOPTS="${CXXFLAGS}" \
			--with-INSTALL="" \
			--with-OPTIMIZER="" \
			--with-TIFFINC="-I${PREFIX}/include" \
			--with-LIBTIFF="-L${PREFIX}/lib -ltiff" \
			--with-CHGRP="/bin/chgrp" \
			--with-CHOWN="/sbin/chown" \
			--with-FAXUID="_hylafax" \
			--with-FAXGID="dialer" \
			--with-LOCKS="ascii" \
			--with-SCRIPT_SH="/bin/ksh" \
			--with-INSTALLROOT="${DESTDIR}" \
			--with-DIR_MAN="${TRUEPREFIX}/man" \
			--with-DIR_LIBDATA="${TRUEPREFIX}/libdata/hylafax/etc"

CONFIGURE_ENV+=		DISABLE_PODOFO=yes

.if ${FLAVOR:Ma4}
CONFIGURE_ARGS+=	--with-PAGESIZE=A4
.endif

FAKE_FLAGS=	ROOT=${WRKINST} SPOOL=${PREFIX}/libdata/hylafax

NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

.include <bsd.port.mk>
