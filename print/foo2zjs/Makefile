# $OpenBSD: Makefile,v 1.10 2010/03/31 16:01:45 ajacoutot Exp $

COMMENT=	driver for ZjStream wire protocol compatible printers

VERSION=	20100329
DISTNAME=	foo2zjs-${VERSION}

CATEGORIES=	print

HOMEPAGE=	http://foo2hp.rkkda.com/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m

MASTER_SITES=	http://www.bsdfrog.org/OpenBSD/distfiles/

USE_GMAKE=	Yes
WRKDIST=	${WRKDIR}/foo2zjs

BUILD_DEPENDS=	::print/ghostscript/gnu # ps2pdf
RUN_DEPENDS=	::print/foomatic-filters

NO_REGRESS=	Yes

pre-configure:
	@perl -pi -e 's,/usr/bin,${PREFIX}/bin,g' \
		${WRKSRC}/*.1in
	${SUBST_CMD} ${WRKSRC}/getweb.in

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/{getweb,msexpand} \
		${PREFIX}/share/doc/foo2zjs

.include <bsd.port.mk>
