# $OpenBSD: Makefile,v 1.29 2002/06/15 19:07:08 pvalchev Exp $

COMMENT=	"PalmPilot communication utilities"

VERSION=	0.9.5
DISTNAME=	pilot-link.${VERSION}
PKGNAME=	pilot-link-${VERSION}p1
CATEGORIES=	comms palm
NEED_VERSION=	1.504
EXTRACT_SUFX=	.tar.bz2

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

HOMEPAGE=	http://www.pilot-link.org

MASTER_SITES=	${HOMEPAGE}/source/

LIB_DEPENDS=	tk83::x11/tk/8.3

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS= --enable-static \
		--with-perl5="/usr/bin/perl" \
		--without-itcl \
		--without-python \
		--without-java

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/scripts

.include <bsd.port.mk>
