COMMENT=	driver for ZjStream wire protocol compatible printers

VERSION=	20201003
DISTNAME=	foo2zjs-${VERSION}
REVISION=	0

CATEGORIES=	print

# original http://foo2zjs.rkkda.com/ is dead
# see also: https://github.com/koenkooi/foo2zjs
HOMEPAGE=	https://foo2zjs.linkevich.net//

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c cups jbig m pthread

# most patches are also from Fedora
SITES=	https://src.fedoraproject.org/repo/pkgs/foo2zjs/${DISTFILES}/sha512/786ddac87e75bb8515ca4afbffdb39e1fad133403d2ffbca5bd615744c9e2bbd6ac2ec4746b86f24b1523aeb3e25c53d798e41b578aa514546a9db0745ac7b3c/

USE_GMAKE=	Yes

WRKDIST=	${WRKDIR}/foo2zjs

BUILD_DEPENDS=	print/ghostscript/gnu # ps2pdf

LIB_DEPENDS=	graphics/jbigkit \
		print/cups,-libs

# foomatic-rip(1), foomatic-db(-engine)
RUN_DEPENDS +=	print/cups-filters

# patch-foo2zjs-pstops_sh
RUN_DEPENDS +=	textproc/gsed

MAKE_FLAGS+=	CUPS_SERVERBIN=`cups-config --serverbin`

NO_TEST=	Yes

# remove CVS ID
post-extract:
	sed -i "s,^VERSION=.*,VERSION=\'${VERSION}\'," ${WRKSRC}/getweb.in

post-patch:
	ln -sf ${WRKSRC}/modify-ppd ${WRKDIR}/bin/modify-ppd

pre-configure:
	sed -i 's,/usr/bin,${PREFIX}/bin,g' \
		${WRKSRC}/*.1in
	${SUBST_CMD} ${WRKSRC}/Makefile ${WRKSRC}/getweb.in

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/{getweb,msexpand} \
		${PREFIX}/share/doc/foo2zjs
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/cups/filter
	ln -sf ${TRUEPREFIX}/bin/command2foo2lava-pjl \
		${WRKINST}/${LOCALBASE}/libexec/cups/filter/

.include <bsd.port.mk>
