# $OpenBSD: Makefile,v 1.35 2004/11/21 22:29:51 espie Exp $

COMMENT=	"PalmPilot communication utilities"

VERSION=	0.9.5
DISTNAME=	pilot-link.${VERSION}
PKGNAME=	pilot-link-${VERSION}p1
CATEGORIES=	comms palm
EXTRACT_SUFX=	.tar.bz2

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m stdc++

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

HOMEPAGE=	http://www.pilot-link.org

MASTER_SITES=	${HOMEPAGE}/source/

FLAVORS=	debug
FLAVOR?=

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS= --enable-static \
		--with-perl5="/usr/bin/perl" \
		--without-itcl \
		--without-python \
		--without-java

.if ${FLAVOR:L:Mdebug} 
LIB_DEPENDS=	tk83::x11/tk/8.3
WANTLIB+=	X11 Xext readline tcl83 termcap
.else
CONFIGURE_ARGS+= --without-tcl --without-tk
.endif

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/scripts

.include <bsd.port.mk>
