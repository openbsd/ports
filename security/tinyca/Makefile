# $OpenBSD: Makefile,v 1.3 2006/07/14 18:59:51 msf Exp $

COMMENT=	"GUI to manage a certification authority"

DISTNAME=	tinyca2-0.7.4
CATEGORIES=	security

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

HOMEPAGE=	http://tinyca.sm-zone.net/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

BUILD_DEPENDS=	::archivers/zip \
		::devel/p5-Locale-gettext \
		::x11/p5-Gtk2
RUN_DEPENDS=	${BUILD_DEPENDS}

NO_BUILD=	Yes
NO_REGRESS=	Yes

PKG_ARCH= *

LANGS=		cs de es

do-configure:
	@perl -i -pe 's,%%LOCALBASE%%,${LOCALBASE},' ${WRKSRC}/tinyca2
	@perl -i -pe 's,%%PREFIX%%,${PREFIX},' ${WRKSRC}/tinyca2

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/tinyca2 ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/tinyca2/templates
	${INSTALL_DATA} ${WRKSRC}/templates/openssl.cnf \
		${PREFIX}/share/tinyca2/templates

.for l in ${LANGS}
	${INSTALL_DATA_DIR} ${PREFIX}/share/tinyca2/locale/$l/LC_MESSAGES/
	@msgfmt ${WRKSRC}/po/$l.po \
		-o ${PREFIX}/share/tinyca2/locale/$l/LC_MESSAGES/tinyca2.mo
.endfor

	${INSTALL_DATA_DIR} ${PREFIX}/lib/tinyca2/GUI
	${INSTALL_DATA} ${WRKSRC}/lib/*.pm ${PREFIX}/lib/tinyca2
	${INSTALL_DATA} ${WRKSRC}/lib/GUI/*.pm ${PREFIX}/lib/tinyca2/GUI

.include <bsd.port.mk>
