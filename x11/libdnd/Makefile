# $OpenBSD: Makefile,v 1.7 2002/04/19 12:40:39 wilfried Exp $

COMMENT=		'drag and drop library'

DISTNAME=		dnd.1.1
PKGNAME=		libdnd-1.1
CATEGORIES=		x11 devel
NEED_VERSION=		1.482

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# LPGL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://leb.net/OffiX/
EXTRACT_SUFX=		.tgz

USE_X11=		Yes
CONFIGURE_STYLE=	gnu

WRKDIST=		${WRKDIR}/DND
WRKSRC=			${WRKDIST}/DNDlib

# This regression test wants an X11 display
REGRESS_FLAGS+=         DISPLAY=${DISPLAY} XAUTHORITY=${XAUTHORITY}
REGRESS_IS_INTERACTIVE= Yes

do-regress:
	@cd ${WRKBUILD} && ./dndtest

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libdnd
	${INSTALL_DATA} ${WRKDIST}/DNDdoc/* ${PREFIX}/share/doc/libdnd

.include <bsd.port.mk>
