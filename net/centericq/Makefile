# $OpenBSD: Makefile,v 1.7 2001/06/30 20:17:36 pvalchev Exp $

COMMENT=	"curses-based icq client implementation"

DISTNAME=	centericq-3.34.15
CATEGORIES=	net	
NEED_VERSION=	1.417
MASTER_SITES=	http://konst.org.ua/download/ \
		http://konst.home.welcomehome.org/

HOMEPAGE=	http://konst.org.ua/software.centericq.html

LIB_DEPENDS=	intl.1::devel/gettext

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

USE_GMAKE=	Yes
CONFIGURE_STYLE= autoconf
CONFIGURE_ENV=	PREFIX="${PREFIX}" \
		CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/centericq
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/centericq
	${INSTALL_DATA} ${WRKSRC}/FAQ ${PREFIX}/share/doc/centericq

.include <bsd.port.mk>
