# $OpenBSD: Makefile,v 1.14 2006/08/01 23:39:08 espie Exp $

COMMENT=		"source code auditing tool"

DISTNAME=		rats-2.1
CATEGORIES=     	devel security

HOMEPAGE=		http://www.securesoftware.com/rats/

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=		http://www.securesoftware.com/rats/ \
			${MASTER_SITE_PACKETSTORM:=UNIX/security/}

LIB_DEPENDS=		expat.>=2::textproc/expat

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS+=	--with-expat-lib=${LOCALBASE}/lib \
			--with-expat-include=${LOCALBASE}/include \
			--libdir=${WRKINST}${PREFIX}/share/rats \
			--datadir=${WRKINST}${PREFIX}/share/rats
MAKE_FLAGS=		CFLAGS='${CFLAGS} -I${LOCALBASE}/include \
			  -DHAVE_LIBEXPAT=1 -DHAVE_EXPAT_H=1 \
			  -DDATADIR=\"${LOCALBASE}/share/rats\"'

ALL_TARGET=		rats
NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rats
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/rats

.include <bsd.port.mk>
