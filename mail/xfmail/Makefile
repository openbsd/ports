# $OpenBSD: Makefile,v 1.15 2000/09/02 13:06:19 kevlo Exp $
# $NetBSD: Makefile,v 1.2 1998/07/04 09:19:04 mycroft Exp $

DISTNAME=       xfmail-1.4.6
CATEGORIES=     mail x11
NEED_VERSION=	1.319
MASTER_SITES=	ftp://xfmail.ufies.org/pub/xfmail/release/1.4.6-3/src/

HOMEPAGE=	http://xfmail.slappy.org/

MAINTAINER=	kevlo@openbsd.org

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS+=	forms::x11/xforms \
		glib.1.2::devel/glib

ONLY_FOR_ARCHS=	i386 sparc m68k hp300

RESTRICTED=	"Selling this software requires permission of the authors."

USE_BZIP2=	Yes
USE_X11=	Yes

CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include/X11" \
		LDFLAGS="-L${LOCALBASE}/lib/X11"

FLAVORS=	threads
FLAVOR?=

.if ${FLAVOR:L} == "threads"
CONFIGURE_ARGS+= --enable-threads
.else
CONFIGURE_ARGS+= --without-threads
.endif	

pre-configure:
	@cp -f ${FILESDIR}/config.cache ${WRKSRC}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xfmail
	${INSTALL_DATA} ${WRKSRC}/Copyright ${PREFIX}/share/doc/xfmail
	${INSTALL_PROGRAM} ${WRKSRC}/ui/xfmail ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/ui/xfmail.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
