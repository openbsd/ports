# $OpenBSD: Makefile,v 1.2 2002/12/14 16:04:12 naddy Exp $

COMMENT=	"X11 keyboard accessibility tool"
COMMENT-gui=	"GUI for xkbset"

DISTNAME=	xkbset-0.5
PKGNAME-gui=	xkbset-gui-0.5
CATEGORIES=	x11
MAINTAINER=	Sebastian Stark <seb@todesplanet.de>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=	http://www.math.missouri.edu/~stephen/software/#xkbset
MASTER_SITES=	http://www.math.missouri.edu/~stephen/software/xkbset/

MAKE_FLAGS=	X11BASE="${X11BASE}"
FAKE_FLAGS=	X11PREFIX="${PREFIX}" \
		INSTALL_DATA="${INSTALL_DATA}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}"

MULTI_PACKAGES=	-gui
SUBPACKAGE?=

.if ${SUBPACKAGE} == "-gui" && defined(PACKAGING)
RUN_DEPENDS=	::x11/xkbset \
		:p5-Tk-*:x11/p5-Tk
.endif

NO_REGRESS=	Yes

.include <bsd.port.mk>
