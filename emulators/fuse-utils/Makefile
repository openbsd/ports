# $OpenBSD: Makefile,v 1.4 2004/08/10 08:32:36 xsa Exp $

COMMENT=		"Free Unix Spectrum Emulator utilities"

DISTNAME=		fuse-utils-0.6.2
CATEGORIES=		emulators

HOMEPAGE=		http://fuse-emulator.sourceforge.net/

MAINTAINER=		Alexander Yurchenko <grange@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=fuse-emulator/}

MODULES=	devel/gettext

LIB_DEPENDS=	spectrum.3::devel/libspectrum

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
