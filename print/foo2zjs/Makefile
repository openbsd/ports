# $OpenBSD: Makefile,v 1.41 2013/03/10 08:11:05 ajacoutot Exp $

COMMENT=	driver for ZjStream wire protocol compatible printers

VERSION=	20130306
DISTNAME=	foo2zjs-${VERSION}

CATEGORIES=	print

HOMEPAGE=	http://foo2zjs.rkkda.com/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c cups m pthread

MASTER_SITES=	http://distfiles.bsdfrog.org/

USE_GMAKE=	Yes

WRKDIST=	${WRKDIR}/foo2zjs

BUILD_DEPENDS=	print/ghostscript/gnu # ps2pdf

LIB_DEPENDS=	print/cups,-libs

# share/foomatic/db/source/*/*.xml
RUN_DEPENDS +=	print/foomatic-db-engine

MAKE_FLAGS+=	CUPS_SERVERBIN=`cups-config --serverbin`

NO_REGRESS=	Yes

# remove CVS ID
post-extract:
	perl -pi -e "s,^VERSION=.*,VERSION=\'${VERSION}\'," ${WRKSRC}/getweb.in

post-patch:
	ln -sf ${WRKSRC}/modify-ppd ${WRKDIR}/bin/modify-ppd

pre-configure:
	perl -pi -e 's,/usr/bin,${PREFIX}/bin,g' \
		${WRKSRC}/*.1in
	perl -pi -e 's,\$\(shell ,\$\(,g' ${WRKSRC}/{,icc2ps}/Makefile
	${SUBST_CMD} ${WRKSRC}/getweb.in

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/{getweb,msexpand} \
		${PREFIX}/share/doc/foo2zjs
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/cups/filter
	ln -sf ${TRUEPREFIX}/bin/command2foo2lava-pjl \
		${WRKINST}/${LOCALBASE}/libexec/cups/filter/

.include <bsd.port.mk>
