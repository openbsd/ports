# $OpenBSD: Makefile,v 1.6 2007/07/21 17:30:10 ajacoutot Exp $

PKG_ARCH=	*

COMMENT=	"GNUstep makefile package"

DISTNAME=	gnustep-make-2.0.1
PKGNAME=	${DISTNAME}p3
CATEGORIES=	devel x11/gnustep

HOMEPAGE=	http://www.gnustep.org/

MASTER_SITES=	ftp://ftp.gnustep.org/pub/gnustep/core/

RUN_DEPENDS=	::archivers/gtar

USE_GMAKE=	Yes
MAKE_FILE=	GNUmakefile

CONFIGURE_STYLE=simple
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
	@perl -p -e 's,!!PREFIX!!,${PREFIX},g' files/openbsd \
		> ${WRKSRC}/FilesystemLayouts/openbsd

post-install:
	@sed -e 's,!!PREFIX!!,${TRUEPREFIX},g' \
		< ${FILESDIR}/README.OpenBSD > ${PREFIX}/share/GNUstep/README.OpenBSD
	${INSTALL_DATA} ${WRKSRC}/GNUstep.conf \
		${PREFIX}/share/GNUstep/GNUstep.conf
	${INSTALL_MAN} ${WRKSRC}/Documentation/openapp.1 \
		${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/Documentation/GNUstep.7 \
		${PREFIX}/man/man7

.include <bsd.port.mk>
