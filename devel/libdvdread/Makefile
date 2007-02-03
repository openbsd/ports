#$OpenBSD: Makefile,v 1.16 2007/02/03 17:07:07 espie Exp $
CATEGORIES=		devel

COMMENT=		"accessing DVD files"
DISTNAME=		libdvdread-0.9.7
PKGNAME=		${DISTNAME}p0
HOMEPAGE=		http://www.dtek.chalmers.se/groups/dvd/
MASTER_SITES=		${HOMEPAGE}dist/

MAINTAINER=		Marc Espie <espie@openbsd.org>

CONFIGURE_STYLE=	gnu
USE_LIBTOOL=		Yes
FLAVORS=		debugcss
FLAVOR?=

.if ${FLAVOR:L:Mdebugcss}
CFLAGS+=		-DDEBUG_CSS
RUN_DEPENDS=		::converters/libdvdcss
.else
RUN_DEPENDS=		::converters/libdvd
.endif

SHARED_LIBS +=	dvdread              4.2      # .5.1

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

SEPARATE_BUILD=		Yes

.include <bsd.port.mk>
