# $OpenBSD: Makefile,v 1.3 2002/04/20 04:59:03 fgsch Exp $

COMMENT=	"eboard extra piece sets and sounds"

DISTNAME=	eboard-extras-1pl2
CATEGORIES=	games
NEED_VERSION=	1.515

HOMEPAGE=	http://eboard.sourceforge.net

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	eboard

RUN_DEPENDS=	::games/eboard

NO_BUILD=	Yes

do-install:
	$(INSTALL_DATA_DIR) $(PREFIX)/share/eboard
	$(INSTALL_DATA_DIR) $(PREFIX)/share/doc/eboard
	cd ${WRKSRC} && {					\
	  $(INSTALL_DATA) *.png *.wav $(PREFIX)/share/eboard;	\
	  $(INSTALL_DATA) extras1.conf				\
	    $(PREFIX)/share/eboard/themeconf.extras1;		\
	  $(INSTALL_DATA) CREDITS $(PREFIX)/share/doc/eboard; }

.include <bsd.port.mk>
