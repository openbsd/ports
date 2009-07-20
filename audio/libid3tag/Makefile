# $OpenBSD: Makefile,v 1.12 2009/07/20 15:36:19 naddy Exp $

COMMENT=	library for reading ID3 tags

DISTNAME=	libid3tag-0.15.1b
PKGNAME=	${DISTNAME}p3
SHARED_LIBS +=	id3tag               4.0      # .3.0

CATEGORIES=	audio
HOMEPAGE=	http://mad.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.mars.org/pub/mpeg/ \
		${MASTER_SITE_SOURCEFORGE:=mad/}

WANTLIB=	z

BUILD_DEPENDS=	::devel/gperf

USE_LIBTOOL=	Yes
SEPARATE_BUILD=	simple
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

post-patch:
	cp ${FILESDIR}/id3tag.pc.in ${WRKSRC}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${INSTALL_DATA} ${WRKBUILD}/id3tag.pc ${PREFIX}/lib/pkgconfig

.include <bsd.port.mk>
