# $OpenBSD: Makefile,v 1.11 2000/04/03 20:38:32 espie Exp $

DISTNAME=	wterm-6.2.6
CATEGORIES=	x11
NEED_VERSION=	 1.230
MASTER_SITES=	http://wm.current.nu/files/

MAINTAINER=	brad@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	wmaker::x11/windowmaker
RUN_DEPENDS=	wmaker::x11/windowmaker

USE_X11=	Yes
GNU_CONFIGURE=	Yes
CONFIGURE_ARGS+=--enable-utmp --enable-wtmp \
		--with-xpm --enable-xpm-background --enable-transparency \
		--enable-xgetdefault
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
FAKE=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/wterm ${PREFIX}/bin
	@chmod 4755 ${PREFIX}/bin/wterm

.include <bsd.port.mk>
