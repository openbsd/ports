# $OpenBSD: Makefile,v 1.36 2013/03/11 11:10:55 espie Exp $

COMMENT =	two-dimensional drawing tool and hyper-object browser

VERSION =	4.2.5
DISTNAME =	tgif-QPL-${VERSION}
PKGNAME =	tgif-${VERSION}
CATEGORIES =	graphics

HOMEPAGE =	http://bourbon.usc.edu/tgif/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Trolltech Q License
PERMIT_PACKAGE_CDROM =	yes

WANTLIB =	X11 Xau Xdmcp Xext c m z

MASTER_SITES =	ftp://bourbon.usc.edu/pub/tgif/ \
		${MASTER_SITE_SOURCEFORGE:=tgif/}

RUN_DEPENDS =	graphics/netpbm

CONFIGURE_STYLE = imake

USE_GROFF =	Yes

MAKE_FLAGS =	MODULE_CFLAGS="${CFLAGS}"

NO_TEST =	Yes

post-extract:
	@cp -f ${WRKDIR}/${DISTNAME}/Tgif.tmpl-openbsd \
		${WRKDIR}/${DISTNAME}/Tgif.tmpl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tgif
	${INSTALL_DATA} ${WRKSRC}/*.obj \
		${WRKSRC}/*.tex ${PREFIX}/share/doc/tgif/
	${INSTALL_DATA} ${WRKSRC}/License \
		${WRKSRC}/README ${PREFIX}/share/doc/tgif/

.include <bsd.port.mk>
