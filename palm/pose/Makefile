# $OpenBSD: Makefile,v 1.6 2010/07/24 17:38:35 ajacoutot Exp $

ONLY_FOR_ARCHS=		i386
COMMENT=		Palm OS Emulator

VERSION=		3.5
DISTNAME=		Emulator_Src_${VERSION}
PKGNAME=		pose-${VERSION}
REVISION=		1
CATEGORIES=		palm emulators
HOMEPAGE=		http://www.palmos.com/

# LGPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

BUILD_DEPENDS=		::x11/fltk

MASTER_SITES=		http://www.palmos.com/dev/tools/emulator/sources/
DISTFILES=		${DISTNAME:L}.tar.gz
WRKSRC=			${WRKDIST}/BuildUnix

CONFIGURE_STYLE=	autoconf no-autoheader
AUTOCONF_VERSION=	2.13
CONFIGURE_ARGS=		--with-fltk=${LOCALBASE} --enable-static-link --with-x
AUTOMAKE_VERSION=	1.4
USE_GMAKE=		Yes
USE_X11=		Yes

.include <bsd.port.mk>
