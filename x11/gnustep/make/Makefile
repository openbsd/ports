# $OpenBSD: Makefile,v 1.22 2010/11/09 08:58:06 jasper Exp $

# WARNING: this port does NOT use the x11/gnustep MODULE

PKG_ARCH=	*

COMMENT=	GNUstep makefile package

DISTNAME=	gnustep-make-2.4.0
REVISION=	2
CATEGORIES=	devel x11/gnustep

HOMEPAGE=	http://www.gnustep.org/

MASTER_SITES=	ftp://ftp.gnustep.org/pub/gnustep/core/

RUN_DEPENDS=	::archivers/gtar

USE_GMAKE=	Yes
USE_GROFF =	Yes
MAKE_FILE=	GNUmakefile

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	ac_cv_prog_LATEX2HTML="" \
		INSTALL="install -c" \
		INSTALL_PROGRAM="install -c -s -m 555" \
		INSTALL_DATA="install -c -m 444"
CONFIGURE_ARGS=	--with-layout=openbsd \
		--prefix=${PREFIX} \
		--with-config-file=${SYSCONFDIR}/GNUstep.conf \
		--with-tar=${LOCALBASE}/bin/gtar \
		--enable-multi-platform \
		--with-library-combo="gnu-gnu-gnu" \
		--with-thread-lib="-pthread"

pre-configure:
	${SUBST_CMD} -c ${FILESDIR}/openbsd \
		${WRKSRC}/FilesystemLayouts/openbsd

post-install:
	${INSTALL_DATA} ${WRKSRC}/{GNUstep.conf,installation-domains.conf} \
		${PREFIX}/share/GNUstep/

.include <bsd.port.mk>
