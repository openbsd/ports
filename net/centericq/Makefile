# $OpenBSD: Makefile,v 1.14 2002/02/02 06:33:25 pvalchev Exp $

COMMENT=	"curses-based icq client implementation"

DISTNAME=	centericq-4.5.1
CATEGORIES=	net	
NEED_VERSION=	1.504
MASTER_SITES=	http://konst.org.ua/download/ \
		http://konst.home.welcomehome.org/

HOMEPAGE=	http://konst.org.ua/software.centericq.html

MODULES=	gettext

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

LIB_DEPENDS=	sigc.0:libsigc++-*:devel/libsigc++

USE_GMAKE=	Yes
CONFIGURE_STYLE= autoconf
BUILD_DEPENDS=	:automake-*:devel/automake
CONFIGURE_ENV=	PREFIX="${PREFIX}" \
		CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/centericq
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/centericq
	${INSTALL_DATA} ${WRKSRC}/FAQ ${PREFIX}/share/doc/centericq

.include <bsd.port.mk>
