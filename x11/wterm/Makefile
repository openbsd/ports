# $OpenBSD: Makefile,v 1.7 2000/02/12 08:02:34 turan Exp $

DISTNAME=	wterm-6.2.6
CATEGORIES=	x11
MASTER_SITES=	http://wm.current.nu/files/

MAINTAINER=	brad@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

BUILD_DEPENDS=	wmaker:${PORTSDIR}/x11/windowmaker
RUN_DEPENDS=	wmaker:${PORTSDIR}/x11/windowmaker

USE_X11=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=--enable-utmp --enable-wtmp \
		--with-xpm --enable-xpm-background --enable-transparency \
		--enable-xgetdefault
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/wterm ${PREFIX}/bin
	@chmod 4755 ${PREFIX}/bin/wterm

.include <bsd.port.mk>
