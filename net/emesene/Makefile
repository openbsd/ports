# $OpenBSD: Makefile,v 1.2 2009/01/10 12:01:06 sthen Exp $

COMMENT =		client for the Windows Live Messenger chat network

MODPY_EGG_VERSION =	1.0.1
DISTNAME =		emesene-${MODPY_EGG_VERSION}
CATEGORIES =		net

HOMEPAGE =		http://www.emesene.org/
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=emesene/}

# GPLv2 or later; LGPLv2.1, PSF license for various bits
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/python
RUN_DEPENDS =		::x11/py-gtk2 \
    			::multimedia/gstreamer-0.10/py-gstreamer \
			:dbus-python-*:x11/dbus-python \
			::devel/py-notify

SUBST_VARS =		MODPY_SITEPKG

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/emesenecommon.py
	@mkdir -p ${WRKSRC}/lib/emesene
	@cd ${WRKSRC} && mv emesenelib plugins_base abstract ./lib/emesene/.
	@cd ${WRKSRC} && for i in *.py; do \
		mv $$i ./lib/emesene/.; done
	@cp ${FILESDIR}/setup.py ${WRKSRC}/.

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/emesene
	@cd ${WRKSRC}; for i in smilies themes sound_themes conversation_themes po; do \
	    pax -rw $$i ${PREFIX}/share/emesene/.; done

.include <bsd.port.mk>
