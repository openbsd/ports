# $OpenBSD: Makefile,v 1.7 2006/08/02 10:10:35 espie Exp $

COMMENT=		"Free Unix Spectrum Emulator utilities"

DISTNAME=		fuse-utils-0.6.2
PKGNAME=		${DISTNAME}p0
CATEGORIES=		emulators

HOMEPAGE=		http://fuse-emulator.sourceforge.net/

MAINTAINER=		Alexander Yurchenko <grange@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c gcrypt

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=fuse-emulator/}

BUILD_DEPENDS=	::devel/gettext
LIB_DEPENDS=	spectrum.>=3::devel/libspectrum

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
