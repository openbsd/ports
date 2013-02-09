# $OpenBSD: Makefile,v 1.56 2013/02/09 14:49:53 sthen Exp $

COMMENT=	read/write/list/format DOS disks under Unix

DATE=		20050317
DISTNAME=	mtools-3.9.10
PKGNAME=	${DISTNAME}.${DATE}
REVISION =	1
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
SEPARATE_BUILD=		Yes
USE_GROFF =	Yes

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS=		--with-x=no
.else
WANTLIB+=		ICE SM X11 Xau pthread-stubs xcb
.endif

pre-patch:
	@ln -s . ${WRKSRC}/mtools

post-patch:
	@rm ${WRKSRC}/mtools

.include <bsd.port.mk>
