# $OpenBSD: Makefile,v 1.4 2002/12/29 15:10:08 fgsch Exp $

COMMENT=	"Zangband (Zelazny Angband) with color, X11 support"

VERSION=	2.6.2
DISTNAME=	zangband-${VERSION}
CATEGORIES=	games
MASTER_SITES=	ftp://clockwork.dementia.org/angband/Variant/ZAngband/

MAINTAINER=	David Lebel <lebel@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=		http://www.zangband.org/

BUILD_DEPENDS=  	::devel/autoconf \
	                ::devel/automake

USE_GMAKE=		Yes
MAKE_ENV=		CC="${CC}" CFLAGS="${CFLAGS}"
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		TRUEPREFIX="${TRUEPREFIX}"

WRKDIST=		${WRKDIR}/zangband

FLAVORS=		no_x11
FLAVOR?=	

.if !${FLAVOR:L:Mno_x11}
USE_X11=		Yes
CONFIGURE_ARGS+=	--with-x
.else
CONFIGURE_ARGS+=	--without-x
.endif

pre-configure:
	@cd ${WRKSRC}; ${WRKSRC}/bootstrap

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/zangband
	(cd ${WRKDIST}/lib && tar -cf - * ) | \
	   (cd ${PREFIX}/share/zangband && tar -xf - )
	@chown -R ${SHAREOWN}:games ${PREFIX}/share/zangband
	@find ${PREFIX} \( -name Makefile\* -o -name delete.me \) \
           -exec rm "{}" \;
	${INSTALL} -s -o ${BINOWN} -g games -m 2555 ${WRKSRC}/src/zangband \
	   ${PREFIX}/bin

.include <bsd.port.mk>
