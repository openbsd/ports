# $OpenBSD: Makefile,v 1.29 2011/07/29 16:56:32 ajacoutot Exp $

COMMENT=		printer (CUPS) administration tool

DISTNAME=		system-config-printer-1.3.5

CATEGORIES=		print sysutils

HOMEPAGE=		http://cyberelk.net/tim/software/system-config-printer/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://cyberelk.net/tim/data/system-config-printer/1.3/
EXTRACT_SUFX=		.tar.xz

MODULES=		lang/python \
			textproc/intltool

BUILD_DEPENDS=		${RUN_DEPENDS} \
			textproc/xmlto
RUN_DEPENDS=		devel/desktop-file-utils \
			devel/gettext \
			devel/py-notify \
			net/py-smbc>=1.0.11 \
			print/py-cups>=1.9.58 \
			textproc/py-xml \
			x11/dbus-python \
			x11/py-gtk2 \
			print/cups-pk-helper

USE_GMAKE=		Yes
USE_GROFF =		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+= 	CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-L${LOCALBASE}/lib

SUBST_FILES=		applet.py cupshelpers/cupshelpers.py \
			probe_printer.py newprinter.py \
			udev/udev-configure-printer.c \
			troubleshoot/CheckSELinux.py \
			cupshelpers/xmldriverprefs.py \
			dbus/org.fedoraproject.Config.Printing.service \
			check-device-ids.py


FAKE_FLAGS=	dbusdir=${PREFIX}/share/examples/system-config-printer/dbus-1/system.d/ \
		autostartdir=${PREFIX}/share/examples/system-config-printer/xdg/autostart/ \
		cupshelpersdir=${PREFIX}/share/examples/system-config-printer/cupshelpers/

pre-configure:
	find ${WRKDIST} -name \*.py | \
		xargs perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g;' \
			-e 's,/usr/bin/python,${MODPY_BIN},g'
.for f in ${SUBST_FILES}
	${SUBST_CMD} ${WRKSRC}/$f
.endfor

.include <bsd.port.mk>
