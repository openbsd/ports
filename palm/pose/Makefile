# $OpenBSD: Makefile,v 1.1.1.1 2006/10/19 16:24:51 mbalmer Exp $

ONLY_FOR_ARCHS=		i386
COMMENT=		"Palm OS Emulator"

VERSION=		3.5
DISTNAME=		Emulator_Src_${VERSION}
PKGNAME=		pose-${VERSION}
CATEGORIES=		palm emulators
HOMEPAGE=		http://www.palmos.com/

MAINTAINER=		Marc Balmer <mbalmer@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

BUILD_DEPENDS=		fltk.2::x11/fltk

MASTER_SITES=		http://www.palmos.com/dev/tools/emulator/sources/
DISTFILES=		${DISTNAME:L}.tar.gz
WRKSRC=			${WRKDIST}/BuildUnix

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-fltk=${LOCALBASE} --enable-static-link --with-x
AUTOMAKE_VERSION=	1.4
USE_GMAKE=		Yes
USE_X11=		Yes

.include <bsd.port.mk>
