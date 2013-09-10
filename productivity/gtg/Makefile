# $OpenBSD: Makefile,v 1.23 2013/09/10 13:26:51 ajacoutot Exp $

COMMENT=		GTD organizer for GNOME

MODPY_EGG_VERSION=	0.2.9
DISTNAME=		gtg-${MODPY_EGG_VERSION}
REVISION=		1

CATEGORIES=		productivity

HOMEPAGE=		http://gtg.fritalk.com/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://launchpadlibrarian.net/92775007/
EXTRACT_SUFX=		.tar.gz

MODULES=		lang/python devel/gettext

RUN_DEPENDS=		devel/desktop-file-utils \
			devel/py-configobj \
			devel/py-simplejson \
			devel/py-xdg \
			devel/py-liblarch_gtk \
			devel/py-cheetah \
			x11/dbus-python \
			x11/gtk+2,-guic

MODPY_ADJ_FILES=	GTG/gtg.py gtg

NO_TEST=		Yes

pre-configure:
	perl -pi -e "s,/usr/bin/gtg,${PREFIX}/bin/gtg,g" \
		${WRKSRC}/gtg.desktop
	perl -pi -e "s,/usr/local,${PREFIX},g;" \
		-e "s,/usr/share,${PREFIX}/share,g" \
		${WRKSRC}/GTG/__init__.py
	perl -pi -e "s,share/man,man,g" ${WRKSRC}/setup.py
	${SUBST_CMD} ${WRKSRC}/GTG/__init__.py

.include <bsd.port.mk>
