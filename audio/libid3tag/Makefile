COMMENT=	library for reading ID3 tags

DISTNAME=	libid3tag-0.15.1b
REVISION=	5
SHARED_LIBS +=	id3tag               4.0      # .3.0

CATEGORIES=	audio
HOMEPAGE=	http://mad.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE=	Yes

MASTER_SITES=	ftp://ftp.mars.org/pub/mpeg/ \
		${MASTER_SITE_SOURCEFORGE:=mad/}

WANTLIB=	z

BUILD_DEPENDS=	devel/gperf>=3.1

CONFIGURE_STYLE=gnu

post-patch:
	cp ${FILESDIR}/id3tag.pc.in ${WRKSRC}
	rm -f ${WRKSRC}/compat.c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${INSTALL_DATA} ${WRKBUILD}/id3tag.pc ${PREFIX}/lib/pkgconfig

.include <bsd.port.mk>
