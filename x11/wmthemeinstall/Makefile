# $OpenBSD: Makefile,v 1.1.1.1 2001/02/09 12:37:15 wilfried Exp $
# $FreeBSD: ports/x11-wm/wmthemeinstall/Makefile,v 1.5 2000/10/05 06:42:57 reg Exp $

DISTNAME=	wmthemeinstall-0.62
CATEGORIES=	x11 x11/windowmaker
NEED_VERSION=	1.340
HOMEPAGE=	http://hellblazer.dhis.org/projects/wmthemeinstall/
MASTER_SITES=	ftp://ftp.FreeBSD.org/pub/FreeBSD/ports/local-distfiles/will/ \
		ftp://ftp.jp.FreeBSD.org/pub/FreeBSD/ports/local-distfiles/will/

LIB_DEPENDS=	gtk.1::x11/gtk+
RUN_DEPENDS=	wmaker::x11/windowmaker

MAINTAINER=	Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

USE_GMAKE=	Yes
CONFIGURE_STYLE=	gnu
SEPARATE_BUILD=	concurrent
USE_X11=	Yes

pre-build:
	@perl -pi -e "s:/usr/local:${PREFIX}:g" ${WRKSRC}/wmOptions.c

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmthemeinstall ${PREFIX}/bin

.include <bsd.port.mk>
