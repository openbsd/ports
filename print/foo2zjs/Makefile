# $OpenBSD: Makefile,v 1.7 2009/10/13 09:54:12 giovanni Exp $

COMMENT=		driver for ZjStream wire protocol compatible printers

VERSION=		20090623
DISTNAME=		foo2zjs-${VERSION}
PKGNAME=		${DISTNAME}p0
CATEGORIES=		print

HOMEPAGE=		http://foo2hp.rkkda.com/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m

MASTER_SITES=		http://bigio.snb.it/openbsd/distfiles/ \
			http://openbsd.dead-parrot.de/distfiles/ \
			http://spacehopper.org/mirrors/ \
			http://meta-planets.net/~openbsd/ \
			http://www.phxbsd.com/OpenBSD/distfiles/

USE_GMAKE=		Yes
WRKDIST=		${WRKDIR}/foo2zjs

BUILD_DEPENDS=		::print/ghostscript/gnu # ps2pdf
RUN_DEPENDS=		::print/foomatic-filters

NO_REGRESS=		Yes

pre-configure:
	@perl -pi -e 's,/usr/bin,${PREFIX}/bin,g' \
		${WRKSRC}/*.1in

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/foo2zjs/{firmware,icm}
	${INSTALL_SCRIPT} ${WRKSRC}/{getweb,msexpand} \
		${PREFIX}/share/doc/foo2zjs

.include <bsd.port.mk>
