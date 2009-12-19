# $OpenBSD: Makefile,v 1.29 2009/12/19 22:35:28 benoit Exp $

COMMENT =	two-dimensional drawing tool and hyper-object browser

VERSION =	4.2.2
DISTNAME =	tgif-QPL-${VERSION}
PKGNAME =	tgif-${VERSION}
CATEGORIES =	graphics

HOMEPAGE =	http://bourbon.usc.edu/tgif/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Trolltech Q License
PERMIT_PACKAGE_CDROM =	yes
PERMIT_PACKAGE_FTP =	yes
PERMIT_DISTFILES_CDROM =yes
PERMIT_DISTFILES_FTP =	yes

WANTLIB =	X11 Xau Xdmcp Xext c m z

MASTER_SITES =	ftp://bourbon.usc.edu/pub/tgif/ \
		${MASTER_SITE_SOURCEFORGE:=tgif/}

RUN_DEPENDS =	::graphics/netpbm

CONFIGURE_STYLE = imake

USE_X11 =	Yes

MAKE_FLAGS =	MODULE_CFLAGS="${CFLAGS}"

NO_REGRESS =	Yes

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
