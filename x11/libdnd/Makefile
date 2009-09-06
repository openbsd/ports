# $OpenBSD: Makefile,v 1.16 2009/09/06 10:46:25 ajacoutot Exp $

COMMENT=		drag and drop library

DISTNAME=		dnd.1.1
PKGNAME=		libdnd-1.1p1
SHARED_LIBS=		Dnd++	1.0 \
			Dnd	0.0
CATEGORIES=		x11 devel

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# LPGL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tgz

USE_X11=		Yes
CONFIGURE_STYLE=	gnu
MAKE_FLAGS=		LIBDnd_VERSION=${LIBDnd_VERSION} \
			LIBDnd++_VERSION=${LIBDnd++_VERSION}

WRKDIST=		${WRKDIR}/DND
WRKSRC=			${WRKDIST}/DNDlib

REGRESS_IS_INTERACTIVE= x11

do-regress:
	@cd ${WRKBUILD} && ./dndtest

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libdnd
	${INSTALL_DATA} ${WRKDIST}/DNDdoc/* ${PREFIX}/share/doc/libdnd

.include <bsd.port.mk>
