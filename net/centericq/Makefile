# $OpenBSD: Makefile,v 1.8 2001/08/19 07:19:25 pvalchev Exp $

COMMENT=	"curses-based icq client implementation"

DISTNAME=	centericq-3.35.22
CATEGORIES=	net	
NEED_VERSION=	1.440
MASTER_SITES=	http://konst.org.ua/download/ \
		http://konst.home.welcomehome.org/

HOMEPAGE=	http://konst.org.ua/software.centericq.html

LIB_DEPENDS=	intl.1:gettext-*:devel/gettext

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
	${INSTALL_DATA_DIR} ${PREFIX}/share/centericq
	${INSTALL_DATA} ${WRKSRC}/share/*.wav ${PREFIX}/share/centericq
	${INSTALL_MAN} ${WRKSRC}/centericq.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
