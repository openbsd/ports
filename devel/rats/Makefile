# $OpenBSD: Makefile,v 1.20 2011/12/19 22:28:59 rpointel Exp $

COMMENT=		source code auditing tool

DISTNAME=		rats-2.3
CATEGORIES=     	devel security

HOMEPAGE=		https://www.fortify.com/ssa-elements/threat-intelligence/rats.html

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c expat

MASTER_SITES=		https://www.fortify.com/downloads2/public/

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS+=	--libdir=${WRKINST}${PREFIX}/share/rats \
			--datadir=${WRKINST}${PREFIX}/share/rats
MAKE_FLAGS=		CFLAGS='${CFLAGS} \
			  -DHAVE_LIBEXPAT=1 -DHAVE_EXPAT_H=1 \
			  -DDATADIR=\"${LOCALBASE}/share/rats\"'

ALL_TARGET=		rats
USE_GROFF =		Yes
NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rats
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/rats

.include <bsd.port.mk>
