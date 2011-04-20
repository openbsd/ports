# $OpenBSD: Makefile,v 1.1.1.1 2011/04/20 08:57:54 dcoppa Exp $

COMMENT =	status and workspace bar for i3

DISTNAME =	i3bar-0.6.21
CATEGORIES =	x11

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

HOMEPAGE =	http://git.merovius.de/i3bar/

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://distfiles.nl/

WANTLIB =	X11 c ev xcb yajl

MODULES =	converters/libiconv

BUILD_DEPENDS =	textproc/asciidoc \
		x11/i3

LIB_DEPENDS =	devel/libev \
		devel/libyajl

RUN_DEPENDS =	x11/i3

MAKE_FLAGS =	A2X="${LOCALBASE}/bin/a2x.py"

FAKE_FLAGS =	PREFIX="${PREFIX}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}"

USE_GMAKE =	Yes

NO_REGRESS =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/common.mk

post-install:
	${INSTALL_MAN} ${WRKBUILD}/doc/*.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
