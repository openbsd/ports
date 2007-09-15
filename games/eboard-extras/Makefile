# $OpenBSD: Makefile,v 1.10 2007/09/15 18:01:01 simon Exp $

COMMENT=	eboard extra piece sets and sounds

PKGNAME=	${DISTNAME}-0.1
DISTNAME=	eboard-extras
DISTFILES=	${DISTNAME}-1pl2${EXTRACT_SUFX} \
		${DISTNAME}-2${EXTRACT_SUFX}
CATEGORIES=	games x11

HOMEPAGE=	http://eboard.sourceforge.net/

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=eboard/}

RUN_DEPENDS=	:eboard->=0.3.1:games/eboard

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

do-install:
	$(INSTALL_DATA_DIR) $(PREFIX)/share/eboard
	$(INSTALL_DATA_DIR) $(PREFIX)/share/doc/eboard
	cd ${WRKDIR}/${DISTNAME}-1pl2 && {			\
	  $(INSTALL_DATA) *.png *.wav $(PREFIX)/share/eboard;	\
	  $(INSTALL_DATA) extras1.conf				\
	    $(PREFIX)/share/eboard/themeconf.extras1;		\
	  $(INSTALL_DATA) CREDITS				\
	    $(PREFIX)/share/doc/eboard/CREDITS.1;		\
	}
	cd ${WRKDIR}/${DISTNAME}-2 && {				\
	  $(INSTALL_DATA) *.png *.wav $(PREFIX)/share/eboard;	\
	  $(INSTALL_DATA) extras2.conf				\
	    $(PREFIX)/share/eboard/themeconf.extras2;		\
	  $(INSTALL_DATA) CREDITS				\
	    $(PREFIX)/share/doc/eboard/CREDITS.2;		\
	}

.include <bsd.port.mk>
