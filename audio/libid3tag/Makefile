# $OpenBSD: Makefile,v 1.16 2013/03/10 22:55:03 espie Exp $

COMMENT=	library for reading ID3 tags

DISTNAME=	libid3tag-0.15.1b
REVISION=	3
SHARED_LIBS +=	id3tag               4.0      # .3.0

CATEGORIES=	audio
HOMEPAGE=	http://mad.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	ftp://ftp.mars.org/pub/mpeg/ \
		${MASTER_SITE_SOURCEFORGE:=mad/}

WANTLIB=	z

BUILD_DEPENDS=	devel/gperf

USE_LIBTOOL=	Yes
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

post-patch:
	cp ${FILESDIR}/id3tag.pc.in ${WRKSRC}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${INSTALL_DATA} ${WRKBUILD}/id3tag.pc ${PREFIX}/lib/pkgconfig

.include <bsd.port.mk>
