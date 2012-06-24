# $OpenBSD: Makefile,v 1.20 2012/06/24 23:01:13 gonzalo Exp $

COMMENT=		GTD organizer for GNOME

MODPY_EGG_VERSION=	0.2.9
DISTNAME=		gtg-${MODPY_EGG_VERSION}

CATEGORIES=		productivity

HOMEPAGE=		http://gtg.fritalk.com/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://launchpadlibrarian.net/92775007/
EXTRACT_SUFX=		.tar.gz

MODULES=		lang/python

RUN_DEPENDS=		devel/desktop-file-utils \
			devel/py-configobj \
			devel/py-simplejson \
			devel/py-xdg \
			devel/py-liblarch_gtk \
			devel/py-cheetah \
			x11/dbus-python \
			x11/gtk+2,-guic

MODPY_ADJ_FILES=	GTG/gtg.py gtg

NO_REGRESS=		Yes

pre-configure:
	perl -pi -e "s,/usr/bin/gtg,${PREFIX}/bin/gtg,g" \
		${WRKSRC}/gtg.desktop
	perl -pi -e "s,/usr/local,${PREFIX},g;" \
		-e "s,/usr/share,${PREFIX}/share,g" \
		${WRKSRC}/GTG/__init__.py
	perl -pi -e "s,share/man,man,g" ${WRKSRC}/setup.py
	${SUBST_CMD} ${WRKSRC}/GTG/__init__.py

.include <bsd.port.mk>
