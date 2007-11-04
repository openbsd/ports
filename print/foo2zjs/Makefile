# $OpenBSD: Makefile,v 1.2 2007/11/04 15:47:45 merdely Exp $

COMMENT=		driver for ZjStream wire protocol compatible printers

VERSION=		20071102
DISTNAME=		foo2zjs-${VERSION}
CATEGORIES=		print

HOMEPAGE=		http://foo2hp.rkkda.com/

MAINTAINER=		Giovanni Bechis <g.bechis@snb.it>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c

MASTER_SITES=		http://bigio.snb.it/openbsd/distfiles/ \
			http://openbsd.dead-parrot.de/distfiles/ \
			http://spacehopper.org/m/ \
			http://meta-planets.net/~openbsd/ \
			http://www.phxbsd.com/OpenBSD/

USE_GMAKE=		Yes
WRKDIST=		${WRKDIR}/foo2zjs
SUBST_VARS=		LOCALBASE

BUILD_DEPENDS=		::print/ghostscript/gnu # ps2pdf
RUN_DEPENDS=		::print/ghostscript/gnu

NO_REGRESS=		Yes

pre-configure:
	@perl -pi -e 's,/usr/bin,${PREFIX}/bin,g' \
		${WRKSRC}/*.1in

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/foo2zjs/{firmware,icm}
	${INSTALL_SCRIPT} ${WRKSRC}/{getweb,msexpand} \
		${PREFIX}/share/doc/foo2zjs

.include <bsd.port.mk>
