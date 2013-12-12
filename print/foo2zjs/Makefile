# $OpenBSD: Makefile,v 1.51 2013/12/12 14:50:30 ajacoutot Exp $

COMMENT=	driver for ZjStream wire protocol compatible printers

VERSION=	20131118
DISTNAME=	foo2zjs-${VERSION}
REVISION=	0

CATEGORIES=	print

HOMEPAGE=	http://foo2zjs.rkkda.com/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c cups m pthread

MASTER_SITES=	https://distfiles.bsdfrog.org/

USE_GMAKE=	Yes

WRKDIST=	${WRKDIR}/foo2zjs

BUILD_DEPENDS=	print/ghostscript/gnu # ps2pdf

LIB_DEPENDS=	print/cups,-libs

# foomatic-rip(1), foomatic-db(-engine)
RUN_DEPENDS +=	print/cups-filters

MAKE_FLAGS+=	CUPS_SERVERBIN=`cups-config --serverbin`

NO_TEST=	Yes

# remove CVS ID
post-extract:
	perl -pi -e "s,^VERSION=.*,VERSION=\'${VERSION}\'," ${WRKSRC}/getweb.in

post-patch:
	ln -sf ${WRKSRC}/modify-ppd ${WRKDIR}/bin/modify-ppd

pre-configure:
	perl -pi -e 's,/usr/bin,${PREFIX}/bin,g' \
		${WRKSRC}/*.1in
	${SUBST_CMD} ${WRKSRC}/getweb.in

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/{getweb,msexpand} \
		${PREFIX}/share/doc/foo2zjs
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/cups/filter
	ln -sf ${TRUEPREFIX}/bin/command2foo2lava-pjl \
		${WRKINST}/${LOCALBASE}/libexec/cups/filter/

.include <bsd.port.mk>
