# $OpenBSD: Makefile,v 1.15 2007/04/27 18:40:40 bernd Exp $

COMMENT=		"source code auditing tool"

DISTNAME=		rats-2.1
PKGNAME=		${DISTNAME}p0
CATEGORIES=     	devel security

HOMEPAGE=		http://www.securesoftware.com/rats/

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c expat

MASTER_SITES=		http://www.securesoftware.com/rats/ \
			${MASTER_SITE_PACKETSTORM:=UNIX/security/}

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS+=	--with-expat-lib=${X11BASE}/lib \
			--with-expat-include=${X11BASE}/include \
			--libdir=${WRKINST}${PREFIX}/share/rats \
			--datadir=${WRKINST}${PREFIX}/share/rats
MAKE_FLAGS=		CFLAGS='${CFLAGS} -I${X11BASE}/include \
			  -DHAVE_LIBEXPAT=1 -DHAVE_EXPAT_H=1 \
			  -DDATADIR=\"${LOCALBASE}/share/rats\"'

ALL_TARGET=		rats
NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rats
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/rats

.include <bsd.port.mk>
