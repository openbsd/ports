# $OpenBSD: Makefile,v 1.51 2009/08/10 06:34:30 kili Exp $

COMMENT=	read/write/list/format DOS disks under Unix

DATE=		20050317
DISTNAME=	mtools-3.9.10
PKGNAME=	${DISTNAME}.${DATE}p1
CATEGORIES=	sysutils
MASTER_SITES=	http://www.tux.org/pub/knaff/mtools/ \
		${HOMEPAGE}

PATCHFILES=	${DISTNAME}-${DATE}.diff.gz

HOMEPAGE=	http://mtools.linux.lu/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu dest
SEPARATE_BUILD=		Simple

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS=		--with-x=no
.else
USE_X11=		Yes
WANTLIB+=		ICE SM X11 Xau pthread-stubs xcb
.endif

pre-patch:
	@ln -s . ${WRKSRC}/mtools

post-patch:
	@rm ${WRKSRC}/mtools

.include <bsd.port.mk>
